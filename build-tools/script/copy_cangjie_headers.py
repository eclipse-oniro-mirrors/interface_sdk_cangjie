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
from collect_dir_sources import get_sources
from pathlib import Path

build_path = (Path(__file__).resolve().parents[4] / "build")
if build_path not in sys.path:
    sys.path.insert(0, str(build_path))
from scripts.util import build_utils  # noqa: E402


def is_f_in_exclude_dir(f, exclude_dirs):
    for e in exclude_dirs:
        if e in f:
            return True
    return False


def copy_files_endswith(input_path, output_path, exclude_dirs, deps, extension: str):
    files = get_sources(input_path, input_path, extension)
    for f in files:
        if not is_f_in_exclude_dir(f, exclude_dirs):
            shutil.copy(f"{input_path}/{f}", f"{output_path}")
            deps.append(f"{input_path}/{f}")
    return


def parse_args(args):
    parser = argparse.ArgumentParser(description='Copy files or trees, optionally filtering by extension')
    parser.add_argument('--input', help='input path')
    parser.add_argument('--output', help='output path')
    parser.add_argument('--exclude-dirs', help='exculde dir')
    parser.add_argument('--stamp', help='Path to touch on success.')
    build_utils.add_depfile_option(parser)

    return parser.parse_args(args)


def main(argv):
    options = parse_args(argv)
    if not os.path.exists(options.output):
        os.makedirs(options.output)
    exclude_dirs = []
    if options.exclude_dirs:
        exclude_dirs = options.exclude_dirs.split(',')
    deps = []
    copy_files_endswith(options.input, options.output, exclude_dirs, deps, extension="cj.d")

    build_utils.write_depfile(options.depfile,
                              options.stamp,
                              deps,
                              add_pydeps=False)
    if options.stamp:
        build_utils.touch(options.stamp)

if __name__ == "__main__":
    exit(main(sys.argv[1:]))
