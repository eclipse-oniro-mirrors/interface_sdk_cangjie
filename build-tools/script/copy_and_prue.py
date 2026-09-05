#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Copyright (c) 2025 Huawei Device Co., Ltd.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import argparse
import os
import shutil
import glob


def remove_directory_safely(dir_path):
    """安全地删除目录，如果目录不存在则不报错"""
    if os.path.exists(dir_path):
        shutil.rmtree(dir_path)


def remove_files_safely(pattern):
    """安全地删除匹配模式的文件，如果文件不存在则不报错"""
    files = glob.glob(pattern)
    for file in files:
        try:
            os.remove(file)
        except OSError:
            pass


def move_directory_safely(source_dir, dest_dir):
    """安全地移动目录，如果源目录不存在则不报错"""
    if os.path.exists(source_dir):
        # 确保目标目录的父目录存在
        os.makedirs(os.path.dirname(dest_dir), exist_ok=True)
        # 移动目录
        shutil.move(source_dir, dest_dir)


def remove_specific_files(base_dir, patterns):
    """
    删除指定目录下的特定文件
    :param base_dir: 基础目录路径
    :param patterns: 要删除的文件模式列表
    """
    if os.path.exists(base_dir):
        for pattern in patterns:
            full_pattern = os.path.join(base_dir, pattern)
            remove_files_safely(full_pattern)


def remove_files_in_subdirs(base_dir, patterns):
    """
    在指定目录的子目录中删除匹配模式的文件
    :param base_dir: 根目录
    :param patterns: 文件模式列表
    """
    if os.path.exists(base_dir):
        for root, _, _ in os.walk(base_dir):
            # 跳过根目录本身，只处理子目录
            if root != base_dir:
                for pattern in patterns:
                    full_pattern = os.path.join(root, pattern)
                    remove_files_safely(full_pattern)


def parse_args():
    """解析命令行参数"""
    parser = argparse.ArgumentParser()
    parser.add_argument("--source", required=True, help="Source directory")
    parser.add_argument("--destination", required=True, help="Destination directory")
    parser.add_argument("--support-ohos-arm", action='store_true', help="Enable support for OHOS ARM architecture")
    parser.add_argument("--support-lto", action='store_true', help="Enable support for LTO, keep static libraries for LTO linking")
    return parser.parse_args()


def copy_sdk(source, destination):
    """
    拷贝源SDK目录到目标目录，目标目录已存在时先清空
    :param source: 源目录路径
    :param destination: 目标目录路径
    :return: 拷贝成功返回True，源目录不存在返回False
    """
    if os.path.exists(destination):
        shutil.rmtree(destination)
    os.makedirs(os.path.dirname(destination), exist_ok=True)

    if not os.path.exists(source):
        print(f"Source directory does not exist: {source}")
        return False

    shutil.copytree(source, destination, symlinks=True, dirs_exist_ok=True)
    return True


def prune_ohos_arm(destination, support_ohos_arm):
    """
    裁剪OHOS ARM架构相关内容
    :param destination: 目标目录路径
    :param support_ohos_arm: 是否支持OHOS ARM架构
    """
    if support_ohos_arm:
        # 删除cangjie/lib/linux_ohos_arm_cjnative/libcangjie-std*.a
        remove_files_safely(os.path.join(destination, "lib", "linux_ohos_arm_cjnative", "libcangjie-std*.a"))
    else:
        remove_directory_safely(os.path.join(destination, "lib", "linux_ohos_arm_cjnative"))
        remove_directory_safely(os.path.join(destination, "runtime/lib", "linux_ohos_arm_cjnative"))
        remove_directory_safely(os.path.join(destination, "modules", "linux_ohos_arm_cjnative"))


def prune_non_lto_static_libs(destination):
    """
    裁剪非LTO场景下不需要的静态库，支持LTO时这些库用于LTO链接，不删除
    :param destination: 目标目录路径
    """
    # 删除cangjie/lib/linux_ohos_aarch64_cjnative 和 cangjie/lib/linux_ohos_x86_64_cjnative/目录下
    # libcangjie-std*.a 和 libboundscheck-static.a
    arch_dirs = [
        os.path.join(destination, "lib", "linux_ohos_aarch64_cjnative"),
        os.path.join(destination, "lib", "linux_ohos_x86_64_cjnative")
    ]
    file_patterns = [
        "libcangjie-std*.a",
        "libboundscheck-static.a"
    ]

    for arch_dir in arch_dirs:
        remove_specific_files(arch_dir, file_patterns)

    # 删除cangjie/lib 子目录下的特定文件
    lib_patterns = [
        "libcangjie-dynamicLoader-opensslFFI.a",
        "libcangjie-ast-support.a",
        "libcangjie-aio.a",
        "libboundscheck.*",
    ]
    remove_files_in_subdirs(os.path.join(destination, "lib"), lib_patterns)

    # 删除cangjie/runtime/lib 子目录下的特定文件
    runtime_lib_patterns = [
        "libcangjie-dynamicLoader-opensslFFI*",
        "libcangjie-demangle.a",
    ]
    remove_files_in_subdirs(os.path.join(destination, "runtime/lib"), runtime_lib_patterns)


def move_dtsparser_to_config(destination):
    """
    如果存在cangjie/tools/dtsparser，则将其移动到cangjie/tools/config
    :param destination: 目标目录路径
    """
    dtsparser_dir = os.path.join(destination, "tools", "dtsparser")
    config_dir = os.path.join(destination, "tools", "config")
    move_directory_safely(dtsparser_dir, config_dir)


def main():
    """
    拷贝并裁剪SDK目录
    """
    args = parse_args()

    if not copy_sdk(args.source, args.destination):
        return 1

    # 删除cangjie/include目录
    remove_directory_safely(os.path.join(args.destination, "include"))

    prune_ohos_arm(args.destination, args.support_ohos_arm)

    # 不支持LTO时，删除静态库；支持LTO时，保留这些静态库用于LTO链接
    if not args.support_lto:
        prune_non_lto_static_libs(args.destination)

    move_dtsparser_to_config(args.destination)

    return 0

if __name__ == "__main__":
    exit(main())
