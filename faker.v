// Copyright (c) 2019 Vitor Oliveira. All rights reserved.
// Use of this source code is governed by an MIT license
// that can be found in the LICENSE file.

import flag
import os

import helpers

fn main() {
    mut fp := flag.new_flag_parser(os.args)
    generator := fp.string('generator', '', 'faker generator name')
    method := fp.string('method', '', 'faker generator method name')
    path := './data/$generator/$method'

    if os.file_exists(path) {
        print_generator_sample(path)
    } else {
        println('File does not exist')
        return
    }
}
