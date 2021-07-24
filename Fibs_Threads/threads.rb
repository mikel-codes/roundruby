require 'net/http'
class Netp
  def connection_trans
    sites = %w(www.google.com www.youtube.com www.slashdot.com)
    threads = sites.map do |link|  # for a link call this block
      Thread.new(link) do |url|   # start a new thread for a link(recognizing #its url address
        http = Net::HTTP.new(url, 8089)   # create http object to start  Http transaction
        print "fetching documents .. #{url}\n"    # retrieving documents 
        resp = http.get('/')
        print "Got from #{url} .... #{resp.message}\n"
      end
    end
    threads.each{ |thr_info|  thr_info.join}
  end
  def th_vars_
    count = 0
    y = 10.times.map do |item|
      Thread.new(item) do 
        sleep(rand(0.1))
        Thread.current[:lo_var] = count 
        count += 1
      end
    end
    y.each {|t| t.join; print t[:lo_var], ", " }
    puts "count = #{count}"
  
  end
end

N = Netp.new
#N.connection_trans
N.th_vars_

threads  = 4.times.map do|num|
  Thread.new(num) do |aval|
    raise "Boo!" if aval == 1
    print "#{aval}\n"
  end
end
puts "w"
sleep(0.4)
puts "DONE"

#threads.each {|x| x.join}

threads.each do |t|
  begin 
    t.join
  rescue RuntimeError => e
    print "Errors Found : #{e.message}\n"
  end

end

mutex = Mutex.new
sum = 0
ye = 10.times.map do|x|
  Thread.new(x) do |i|
    100_000.times do
      mutex.synchronize do
      new_value = sum + 1
      print "#{new_value}\n" if new_value % 1_000_000 == 0
      sum = new_value
      end
    end
  end
end
puts
m = ye.each(&:join)

pipe = IO.popen("-", "w+")
if pipe
  pipe.puts "heello world"
  STDERR.puts "Dad says '#{pipe.gets.chomp}'"
else
  STDERR.puts "Interpreter says '#{gets.chomp}'"
  puts "OK"
end
fork do
  puts "Process id is #$$"
  exit 100
end

pid =Process.wait
puts "Child killed at , pid = #{pid} , status = #{$?.exitstatus}"


bbc = IO.popen("/root/Desktop/mini.html", "w")

bbc.puts "hello world"
bbc.close_write
puts bbc.gets


trap("CLD") do
    pid = Process.wait
    puts "Child terminated '#{pid}'"
end


fork{ exec("sort /root/Desktop/mini.html > output.txt") }


