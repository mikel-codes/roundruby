count = Hash.new(0)

File.foreach("/root/justice.py") do |line|  # open a file with a foreach iterator which calls the code block on file action
  line.scan(/\w+/) do|word|                 # look through each line in this file recognizing only word characters
    count[word] += 1                        # for a line add a word and set its count value
  end
end

p count
count.keys.sort.each {|k| puts "#{k}: #{count[k]}"}

words = Fiber.new do
  File.foreach("/root/yung.rb") do|line|
    line.scan(/\w+/) do |word|
      Fiber.yield word.downcase
    end
  end
  nil
end


canoe = Hash.new(0)
while word=words.resume
  canoe[word] += 1
end

p canoe

even_nums = Fiber.new do
  num = 0
  loop do 
    Fiber.yield num unless num % 3 == 0
    num += 2
  end
  nil
end


10.times { print "#{even_nums.resume}", ", "}

puts 
count = 0
threads = 10.times.map do|i|
  Thread.new do 
    sleep(rand(0.1))
    Thread.current[:count] = count
    count += 1
  end
end

threads.each {|t| t.join; print t[:count], " - "}
puts count
puts
i = 0
Thread.abort_on_exception = true
threads = 5.times.map do |n|
  Thread.new(n) do |i|
    raise "boom!" if i == 1
    print "i=>#{i}\n"
  end
end
puts "waiting"
sleep(0.1)
puts "Done!"

puts
require 'net/http'
internet_pages = %w{ www.google.com www.bing.com www.yahoo.com}
threads = internet_pages.map do|urli|
   Thread.new(urli) do|url|
    http = Net::HTTP.new(url, 80)
    print "Fetching the url #{url}\n"
    resp = http.get("/")
    print "'Got #{url} : #{resp.message}'\n}"
   end
end


threads.each do|u| 
  begin
    u.join 
  rescue RuntimeError, SocketError => err
    fail "errors occurred :: #{err} > #{err.message}" 
  end
end


