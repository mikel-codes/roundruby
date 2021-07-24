sum = 0
mutex = Mutex.new
threads = 10.times.map do
  Thread.new do
    100_000.times do 
      mutex.synchronize do
      new_val = sum + 1
      print "#{new_val} " if new_val % 250_000 == 0
      sum = new_val
      end
    end
  end
end
puts system("date")
threads.each(&:join)
puts 
puts "sum=> #{sum}"
