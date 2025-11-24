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
import subprocess
from pathlib import Path
from typing import List, Optional
from collect_dir_sources import get_sources


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


def write_depfile(depfile: Path, inputs: List[Path], outputs: List[Path]):
    try:
        depfile.parent.mkdir(parents=True, exist_ok=True)
        # Write a simple depfile: one line per output: inputs...
        with depfile.open('w', encoding='utf-8') as f:
            for out in outputs:
                # join inputs with spaces; escape spaces in paths
                in_list = ' '.join(str(p).replace(' ', '\\ ') for p in inputs)
                f.write(f"{out}: {in_list}\n")
    except Exception as e:
        print(f'WARN: failed to write depfile {depfile}: {e}', file=sys.stderr)


def convert_cjo_to_json(flatc, input, output_path, fbs):
    child = subprocess.Popen([flatc, "-t", "--raw-binary", "-o", output_path, fbs, "--", input], stdout=subprocess.PIPE)
    code = child.wait()
    if code != 0:
        raise Exception("failed to flatc -t --raw-binary -o [output-path] [fbs] -- [input]")


def convert_json_to_cjo(flatc, input, output_path, fbs):
    child = subprocess.Popen([flatc, "--no-warnings", "-b", "-o", output_path, fbs, input], stdout=subprocess.PIPE)
    code = child.wait()
    if code != 0:
        raise Exception("failed to flatc -b -o [output-path] [fbs] [input]")
    stem = os.path.splitext(os.path.basename(input))[0]
    module_name = "ohos"
    if stem.startswith("kit"):
        module_name = "kit"
    cjo_output_path = f"{output_path}/{module_name}"
    if not os.path.exists(cjo_output_path):
        os.makedirs(cjo_output_path)
    shutil.move(f'{output_path}/{stem}.bin', f'{cjo_output_path}/{stem}.cjo')


def parse_args(args):
    parser = argparse.ArgumentParser(description='Convert between .cjo and json and copy results')
    parser.add_argument('--flatc', help='flatc path')
    parser.add_argument('--fbs', help='schema.fbs path')
    parser.add_argument('--input-dir', help='cjo or json path')
    parser.add_argument('--copy-cjo-dir', help='copy cjo source dir')
    parser.add_argument('--output-dir', help='output path')
    parser.add_argument('--mock', help='mock so')
    parser.add_argument('--depfile', help='可选：写入 depfile，格式为 "<output>: <inputs...>" 每行一条')
    return parser.parse_args(args)


def _ensure_dir(path: str) -> None:
    if not os.path.exists(path):
        os.makedirs(path)


def _process_jsons(options) -> None:
    if not options.input_dir or not options.output_dir:
        return
    _ensure_dir(options.output_dir)
    json_path_list = get_sources(options.input_dir, options.input_dir, "json")
    for json in json_path_list:
        convert_json_to_cjo(options.flatc, f"{options.input_dir}/{json}", options.output_dir, options.fbs)


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
            write_depfile(Path(options.depfile), [], [])
        return
    copied = copy_files(cjo_files, dst, mock)
    if options.depfile:
        write_depfile(Path(options.depfile), cjo_files, copied)


def main(argv):
    options = parse_args(argv)
    _process_jsons(options)
    _process_copy_cjo(options)


if __name__ == "__main__":
    exit(main(sys.argv[1:]))
