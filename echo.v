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
    s.send(buf, n) or {
      println(err)
    }
  }
}