print "t(times) and a(adds)\n Enter your preferred operator: "
a = gets
print "number: "
number = Integer(gets)

if a =~ /^t/
  calc = lambda {|n| n * number}
elsif a =~ /a/
   calc = lambda {|n| n + number}
else
  puts "This operation is invalid"
end

puts (1..10).collect(&calc).join(" : ")


