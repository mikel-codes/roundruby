
class File

  def File.open(*args)  # because u can have more than one argumenet usually(filename,'mode')
    result = f = File.new(*args)
  
    if block_given?  # if this open call has an associated code block
      begin
        result = yield f  # call the code block on file handler now passsed on as parameter
      ensure
        f.close
      end
    end
    return result
  end
end


def coder

  while copier = gets
    puts copier.chomp, ""
    if copier == "!"
      break
  end
  foo = File.open("/root/Desktop/wonder") 
  
  while line = foo.gets
    puts line
  end
  end
end

def methodist
  File.open("/root/url.html") do |file|
    while  line = file.gets
      puts line
    end
  end
end


coder
methodist
puts "************************************"
File.open("/root/Desktop/Warren Buffet") do |file|
  file.each_byte.with_index do |ch, index|
    puts "#{ch.chr}:#{ch} "
    break if index > 2
  end
end
puts "***********************************"

"""file IO continuity"""

File.open("/root/Desktop/Warren Buffet") do |file|
  file.each_line("e") {|line| puts "#{line.dump}"}
end

str = IO.read("/root/Desktop/Warren Buffet") # return full file in one string
puts str.length
puts str[0, 10]


"""This as an array"""

ovp = IO.readlines("/root/Desktop/Warren Buffet")
puts ovp[0]
puts ovp.length


File.open("rbout.txt", 'w') do |file|
  file.puts "This is ruby"
  file.puts "Hello world"
end

puts File.read("rbout.txt")

require 'stringio'

# This module creates virtual inputs n' outputs interfaces 
# that behaves likes files gets and puts(IO) real_life file write and write
ip = StringIO.new("Hello world we made it")
op = StringIO.new("", "w")


ip.each_line do |line|
  op.puts line.reverse
end
print op.string
while line = ip.gets
  op.puts "#{line.reverse}"
end
print op.string
ip.foreach {|line| op.puts "#{line.reverse}"}

