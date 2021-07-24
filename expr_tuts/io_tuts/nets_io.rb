require 'socket'
require 'net/http'
require 'open-uri'
client = TCPSocket.open("localhost", "www")
begin
  client.send("OPTIONS /~dave/ HTTP/1.0\n\n", 0)
  puts client.readlines
rescue Exception => neterr
  STDERR.puts "An error occurred", neterr
  raise
ensure
  client.close
end

"""The Internet high level protocol using lib/nnet module """
http = Net::HTTP.new("facebook.com", 80)
response = http.gets("/login.php")

if response.message == "OK"
  puts response.body.scan(/<img src = ".*?" src = "(.*?)/m).uniq[0,3]
end


"""Parsing HTML"""
webs = open("http://www.google.com").read
if webs =~ %r{<title>.*?</title>} then
  puts "Title is #{$1.inspect}"
end
