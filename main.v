// Copyright (c) 2019 Vitor Oliveira. All rights reserved.
// Use of this source code is governed by an MIT license
// that can be found in the LICENSE file.

import os
import rand
import time

fn main() {
	mut path := './data/address/country'
	
    contents := os.read_file(path.trim_space()) or {
		println('failed to open $path')
		return
	}
    
    lines := contents.split_into_lines()
    length := lines.len

    rand.seed(time.now().uni)
    println(lines[rand.next(length-1)])
}
