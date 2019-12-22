module main

import net

fn main() {
  sock := net.listen(1234) or {
    panic(err)
  }

  for {
    s := sock.accept() or {
      println(err)
      continue
    }

    buf, n := s.recv(1024)
    line := tos(buf, n)
    println(line)
    s.send(buf, n) or {
      println(err)
    }
  }
}
