#!/usr/bin/env  ruby -w
BEGIN{
  puts "tuts by and for conditionals"
}
$debug = 4
x = 22
print "debug\n" if  $debug
unless x % 2 == 0 then
  print "x-> #{x} is odd number"
else
  print "x-> #{x} is even number"
end
puts 
print "0906 is a pager" unless $var

puts "\n details for case expressions"
$age= 8
case $age
when  0 .. 3
  puts "Young"
when  4 .. 6
 puts "Older Child"
when 7 .. 9
  puts "close to teen child"
else
  puts "does not fall in age range"
end

$y = 0
$n = 9
begin
  puts "y value => #$y"
  $y += 1
end while $y < $n

for x in 0..5
  if x < 2 then 
    next
  end
  puts "what do y'all say ->#{x}"
end

def bar()
  puts "this is foo"
end
def foo()
 puts "Hello world"
end
alias foo bar
foo

def rest(*tests, &block)
   block.call(78)
   puts "The number of params to this method is #{tests.length}"
   for i in 0...tests.length
     puts "arguments to nkw variables  in order is #{tests[i]}"
   end
end


rest("Hello", "00", "90") { |i| puts "it block argument is #{i}"} 

