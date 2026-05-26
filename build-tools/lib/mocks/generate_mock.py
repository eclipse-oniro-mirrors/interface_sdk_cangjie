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

import sys
import os
import argparse
from pathlib import Path

build_path = Path(__file__).resolve().parents[5] / "build"
if build_path not in sys.path:
    sys.path.insert(0, str(build_path))
from scripts.util import build_utils  # noqa: E402

STUB_FUNCTION_TEMPLATE = '''
void {}() {{  }}
'''


def _get_identifier(src):
    id_str = src[0:len(src) - 1]
    if not id_str.isidentifier():
        raise ValueError(f"Invalid C identifier: {id_str}")
    return id_str


def _gen_mock_source(options):
    contents = []
    if not os.path.exists(options.input):
        raise FileNotFoundError(f"Input file not found: {options.input}")

    with open(options.input, "r") as f:
        for line in f.readlines():
            line = line.strip()
            if not line or line.startswith("#"):
                continue
            if not line.endswith(";"):
                continue
            funcName = _get_identifier(line)
            contents.append(STUB_FUNCTION_TEMPLATE.format(funcName))
    with open(options.output, "w") as f:
        f.write('\n'.join(contents))

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", required=True, help="a text file lists library exports")
    parser.add_argument("--output", required=True, help="output source path")
    parser.add_argument("--depfile", required=True)
    args = parser.parse_args()
    depfiles = [args.input]
    _gen_mock_source(args)

    build_utils.write_depfile(args.depfile, args.output, depfiles)
