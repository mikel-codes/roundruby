require 'open-uri'
webpage = open("/root/Gallery/Downloads/The Beginner’s Guide to iptables, the Linux Firewall.html")
page = File.new("google.html","w")
begin
  while line = webpage.gets
    page.write(line)
  end
  page.close
rescue Exception
  STDERR.puts "failed to download web page to file: #{$!}"
  page.close()
  File.delete(page)
  raise
end
  

world = File.open("/root/ht.py")
word_error = catch(:done) do
  result = []
  world.each do |line|
    throw(:done, line) unless line =~ /^\w+$/
    result << line.chomp
  end
  puts result.reverse
end

if word_error
  puts "Error occured #{word_error} found, but a word was expected"
end

File.open("expr.rb") do |handler|
  begin
  handler.each_byte.with_index do |ch, index|
      puts "#{ch.chr}: #{ch}"
      break unless index < 10
  end
  ensure
    handler.close
  end
end

puts
puts "Binary data into string"
str1="\001\002\003"
str2 = ""
str2 << 1 << 2 << 3
puts str2
puts [1, 3, 4].pack("x*")
