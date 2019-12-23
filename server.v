module main

import net

fn main() {
  sock := net.listen(1234)?
  for {
    s := sock.accept() or {
      println(err)
      continue
    }
    go serve(s)
  }
}

fn serve(sock net.Socket) {
  buf, n := s.recv(1024)
  line := tos(buf, n)
  println(line)
  s.send(buf, n) or {
    println(err)
  }
}
