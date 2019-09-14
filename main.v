// Copyright (c) 2019 Vitor Oliveira. All rights reserved.
// Use of this source code is governed by an MIT license
// that can be found in the LICENSE file.

import os
import rand
import time
import flag

fn main() {
    mut fp := flag.new_flag_parser(os.args)
    generator := fp.string('generator', '', 'faker generator name')
    method := fp.string('method', '', 'faker generator method name')
    path := './data/$generator/$method'

    if os.file_exists(path) {
        contents := os.read_file(path.trim_space()) or {
            println('Failed to open $path')
            return
        }

        lines := contents.split_into_lines()
        length := lines.len

        rand.seed(time.now().uni)
        println(lines[rand.next(length-1)])
    } else {
        println('File does not exist')
        return
    }
}
