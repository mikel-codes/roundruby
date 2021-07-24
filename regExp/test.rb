
def fibres
  counts = Hash.new(0)  #creates a new dic
  File.foreach("/root/Desktop/Warren Buffet") do|line|  # presents file object as a set of readline
    line.scan(/\w+/) do|word|                         # looks at each word character in a line
      counts[word] += 1                               # builds dict key to value
    end
  end
  counts.keys.sort.each {|x| puts "#{x} ... #{counts[x]}" }
end

p fibres

infinity = Fiber.new() do
  File.foreach("/root/Desktop/rockyou.txt") do |line|
    line.scan(/\w+/) do |word|
      Fiber.yield word.downcase
    end
  end
  nil
end
c = Hash.new(0)
while word = infinity.resume
  c[word] += 1
end

p c.keys.sort.each {|x| puts "#{x} ... #{c[x]}" }


car_age = gets.to_f
case car_age
when 0..0
  puts "nice and new"
when 1..4
  puts "pretty startling"
else
  puts "easy tang"
  puts "hmm quite outdated though"
end

