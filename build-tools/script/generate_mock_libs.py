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


def parse_args(args):
    parser = argparse.ArgumentParser(description='Generate mock libs from .cj.d sources')
    parser.add_argument('--input-dir', help='cjo or json path')
    parser.add_argument('--output-dir', help='output path')
    parser.add_argument('--mock', help='mock so')
    return parser.parse_args(args)


def main(argv):
    options = parse_args(argv)
    if not os.path.exists(options.output_dir):
        os.makedirs(options.output_dir)
    json_path_list = get_sources(options.input_dir, options.input_dir, "json")
    for json_path in json_path_list:
        stem = os.path.splitext(os.path.basename(json_path))[0]
        shutil.copy(options.mock, f'{options.output_dir}/lib{stem}.so')


if __name__ == "__main__":
    exit(main(sys.argv[1:]))
