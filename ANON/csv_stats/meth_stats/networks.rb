require 'sockets'

connection = TCPSocket.open("127.0.0.1", "www")
connection.send("OPTIONS /root/ HTTP/1.0\n\n", 0)
puts connection.readlines

connection.close
