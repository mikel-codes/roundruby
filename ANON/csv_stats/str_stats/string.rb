#!/usr/bin/env ruby -w
puts %x!date!
puts "hello" * 3
str = ""
str << 92
puts str

puts "yello" <=> "hello"

puts "a".concat('"m"')
puts "passwo".crypt("sduhbas")

str = "hello\tworld\nCoin\vCome"
puts str
p str.dump

array = Array.new(10)
puts array

nums = Array.new(10) { |e| e = e * 2 }
puts "#{nums}"

