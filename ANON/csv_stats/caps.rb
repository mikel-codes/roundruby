class Caps
  attr_reader :bssid, :first_timeseen, :last_time_seen, :channel, :speed

  def initialize(bssid, first_time_seen, last_time_seent , channel, speed )
    @bssid =bssid; @first_time_seen = first_time_seen; @last_time_seen=last_time_seen
    @channel = channel; @speed=speed
  end

end

$Object = Object.new()
def find
  each do |value|
    a = []
    for i in $Object.length
      if yield value
        a.push (value)
      end
    end
    puts "array is #{a}"
  end
  nil
end
puts [23,34,23,1,1].find {|v| v > 8}
["H", "S", "B"].map {|s| p s.succ}

handler = File.open("/root/tutd.py")
handler.each.with_index do|line, index|
  puts "This is #{index} line #{line}"
end
handler.close

[23,4,2,1].inject(1){ |sum, element| p sum+element}
a = ["hail", "me", "forever", 23,10, 900]
enum_a = a.to_enum
loop do
  puts enum_a.next
end

result = []
['a','v', 'x'].each_with_index {|item, index| result.push([item, index])}
p result
a = "cat"
p a.length

for i in a.each_char
  p i
end

enum = "cat".enum_for(:each_char)
for i in enum
  enum.next
end



#Enumerators are objects and have 
#they can be created explicitly as generators
trg = Enumerator.new do |yielder|
  number = 0
  count = 1
  loop do
    number = number + count
    count = count + 1
    yielder.yield number
  end
end
puts
5.times {print trg.next, ".." }

tree = Enumerator.new do |treeview|
  number = 0
  count = 1
  loop do
    number += count; count += 1
    treeview.yield "#{number}\n"
  end
end

5.times.with_index do |index|
  count = 0
  while count > 5
    for i in [0,1,2,5,6].each
      if count = i
         yield tree.next, " " * count
         puts 

