require 'socket'
# creates our custom Exception
class RetryException < Exception
  attr  :ok_to_retry
  def initialize(ok_to_retry)
    @ok_to_retry = ok_to_retry
  end
end

class SocksError < Exception
  attr :recall
  def initialize
    @recall = 1
  end
end
def prompt_and_get(prompt)
  print prompt
  res = readline.chomp
  throw :done if res == "!"
  print res
end

catch(:done) do
prompt_and_get("Name: ")
prompt_and_get("Age: ")
prompt_and_get("Crew: ")
end
# we can raise , throw & catch this exception

def cbt
  word_list = File.open("/root/Desktop/wonder")
  word_error = catch(:done) do
    result = []
    while line = word_list.gets
      word = line.chomp
      throw :done unless word =~ /^\w+$/
      result << word
    end
    puts result.reverse
  end

  if word_error
    puts "Failed at :#{word_error}, a word was expected"
end
end
cbt

def output
  name = gets
  if  (name.chomp).nil? then
    raise RetryException.new(true), "name value is null", caller
  end
end

def read_socks(socket)
  stuff = socket.read(599)
  if stuff.nil? then 
    raise SocksError.new, "data seems transient", caller[1..-1]
  end
end

begin 
  newline = output
rescue RetryException => detail
  STDERR.puts "The following error was encountered", detail
  retry if detail.ok_to_retry
  raise
rescue SocksError => op
  STDERR.puts "Socket Error", op
  raise 
end


