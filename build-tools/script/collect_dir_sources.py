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

import os


def get_sources(source_dir, relative, extension):
    """遍历源目录，收集指定扩展名的文件相对路径列表

    Args:
        source_dir: 要遍历的源目录路径
        relative: 计算相对路径的基准路径
        extension: 目标文件扩展名，如 '.h'

    Returns:
        匹配扩展名的文件相对于 relative 的路径列表
    """
    walk_nodes = os.walk(source_dir)
    result = []
    for path, _, file_list in walk_nodes:
        for file_name in file_list:
            if file_name.endswith(extension):
                file_path = os.path.join(path, file_name)
                result.append(os.path.relpath(file_path, relative))
    return result
