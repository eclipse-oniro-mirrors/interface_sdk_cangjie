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
import sys
import argparse
import shutil
from pathlib import Path
from typing import List, Optional

build_path = Path(__file__).resolve().parents[4] / "build"
if build_path not in sys.path:
    sys.path.insert(0, str(build_path))
from scripts.util import build_utils  # noqa: E402


def find_cjo_files(src_dir: Path) -> List[Path]:
    files: List[Path] = []
    for root, _, filenames in os.walk(src_dir):
        for fn in filenames:
            if fn.lower().endswith('.cjo'):
                files.append(Path(root) / fn)
    return files


def target_subdir_for_name(name: str) -> str:
    if name.startswith('ohos'):
        return 'ohos'
    if name.startswith('kit'):
        return 'kit'
    return 'other'


def copy_files(src_files: List[Path], dest_dir: Path, mock: Optional[Path] = None) -> List[Path]:
    """Copy .cjo files into categorized subdirs and optionally copy a mock .so next to each.

    Returns the list of copied target paths.
    """
    copied: List[Path] = []
    for src in src_files:
        basename = src.name
        package_name = basename.split(".cjo")[0]
        mock_so_name = f"lib{package_name}.so"
        sub = target_subdir_for_name(basename)
        dst_folder = dest_dir / sub
        dst_folder.mkdir(parents=True, exist_ok=True)
        dst = dst_folder / basename
        try:
            shutil.copy2(src, dst)
            copied.append(dst)
            if mock and mock.exists():
                mock_so_dst = dst_folder / mock_so_name
                shutil.copy2(mock, mock_so_dst)
                copied.append(mock_so_dst)
        except Exception as e:
            print(f'WARN: failed to copy {src} -> {dst}: {e}', file=sys.stderr)
    return copied


def parse_args(args):
    parser = argparse.ArgumentParser(description='Convert between .cjo and json and copy results')
    parser.add_argument('--copy-cjo-dir', help='copy cjo source dir')
    parser.add_argument('--output-dir', help='output path')
    parser.add_argument('--mock', help='mock so')
    parser.add_argument('--depfile', help='可选：写入 depfile，格式为 "<output>: <inputs...>" 每行一条')
    return parser.parse_args(args)


def _process_copy_cjo(options) -> None:
    if not options.copy_cjo_dir or not options.output_dir:
        return
    src = Path(options.copy_cjo_dir)
    dst = Path(options.output_dir)
    mock = Path(options.mock) if options.mock else None
    if src == dst:
        return
    cjo_files = find_cjo_files(src)
    if not cjo_files:
        if options.depfile:
            build_utils.write_depfile(options.depfile, options.mock, [], add_pydeps=False)
        return
    copied = copy_files(cjo_files, dst, mock)
    inputs_cjo_files: List[str] = [str(f) for f in cjo_files]
    if options.depfile:
        build_utils.write_depfile(options.depfile,
                                  str(copied[0]),
                                  inputs_cjo_files,
                                  add_pydeps=False)


def main(argv):
    options = parse_args(argv)
    _process_copy_cjo(options)


if __name__ == "__main__":
    exit(main(sys.argv[1:]))
