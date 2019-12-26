modlue main

import (
  net
  os
)

fn main() {
  line := os.get_line()
  sock := net.dial("localhost", 1234)?
  sock.send(line.str, line.len)?
  buf, n := sock.recv(line.len)
  ln := tos(buf, n)
  println(ln)
}
