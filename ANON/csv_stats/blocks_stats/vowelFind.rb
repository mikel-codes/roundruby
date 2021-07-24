require 'mathn'
class FindVowel
  include Enumerable

  def initialize(string)
    @string = string
  end
  def each
    @string.scan(/[aeiou]/) do |v|
     yield v
    end
  end
end

vf = FindVowel.new("Yhe quick yellow fox ran")
p vf.inject(:+)

num = 1_101
4.times do 
  puts "#{num.class}: #{num}"
  num = num * num
end

puts Rational(1,3) * Rational(2,3)
puts Complex("2+2i") * Complex(2,9)

File.open("c.txt").each do|l|
  v1, v2 = l.split(" ")
  v3 = Integer(v1) + Integer(v2)
  puts v3
end
puts
p 22/3

puts "Now is #{def the(a)
                 "the " + a
end
 the('time') } for all coders"

print <<-STRING1, <<-STRING2
Concat
STRING1
  enate
  STRING2
 
Songs= Struct.new(:title, :name, :length)
File.open("songs") do|track_line|
  song = []
  track_line.each do |line|
    file, title, name, length = line.chomp.split(/\s*\|\s*/)
    song << Songs.new(title, name, length)
  end
  
end



