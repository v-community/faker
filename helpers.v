// Copyright (c) 2019 Vitor Oliveira. All rights reserved.
// Use of this source code is governed by an MIT license
// that can be found in the LICENSE file.

module helpers

import rand
import time

fn print_generator_sample(path string) {
    contents := os.read_file(path.trim_space()) or {
        println('Failed to open $path')
        return
    }

    lines := contents.split_into_lines()
    length := lines.len

    print_random_element(lines, length)
}

fn print_random_element(lines []string, length int) {
    rand.seed(time.now().uni)

    println(lines[rand.next(length-1)])
}
