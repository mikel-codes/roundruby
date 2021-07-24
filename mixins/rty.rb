
private
def ronib
  num = 1001
  
  4.times do
    puts "#{num.class} . #{num}"
    num *= num
  end
end

def ratcmpx
  puts Rational(2,2) * Rational(3,4)
  puts Rational("2/3") * Rational("3/2")
  puts Complex(1,2) * Complex(2,4)
  puts Complex("2+12i") * Complex("2+3i")
end
p ronib
p ratcmpx

puts "we have  #{def the(a)
                  a * 3
end
the("Ho")
} days to go"
string = <<-END_OF_STRING
The body of the string is the input lines up to
one starting with the same text that followed the '<<'
END_OF_STRING

p %!Helo world!
p %{world alive semem}

p string
here = <<WN
all we have to discuss is over
WN
puts here
#encoding: utf-8
plain_str = "Lego housed Entertainment"
puts RUBY_VERSION

puts "The encoding of #{plain_str.inspect} is #{plain_str.encoding}"

Song = Struct.new(:title, :name, :length)

File.open("playList.txt") do|object_ret|
  song = []

  object_ret.each do |line|
    file, length, name, title = line.chomp.split(/\s*\|\s*/)
    name.squeeze!(" ")
    v1, v2 = length.split(/:/)
    song << Song.new(title, name, v1.to_i * 60 + v2.to_i)
    
  end
  puts song[0]
end


class PowerOfTwo
  attr_reader :value
  def initialize(value)
    @value = value
  end
  def <=>other
    @value <=> other.value
  end
  def succ
    PowerOfTwo.new(@value + @value)
  end
  def to_s
    @value.to_s
  end
end

p1 = PowerOfTwo.new(2)
p2 = PowerOfTwo.new(8)

puts (p1..p2).to_a


car_age = gets.to_f
case car_age
when 0..1
  puts "Kinda "
when 1..4
  puts "okay"
when 4..6
  puts "its ours"
else
  puts "beyond naija"
end

str = "it rained cats and dogs "
if str =~ /cat/
  puts "we found cat somehere"
end

