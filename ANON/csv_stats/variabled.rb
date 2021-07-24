person = "Thomas"
puts "The person object is #{person.class}"
puts "The person id is #{person.object_id}"
puts "The person value is #{person}"
person.freeze
person1 = person.dup
puts "person1 value is #{person1}"
person1[0] = ""
person1[1] = "J"
puts "person1 value is #{person1}"

person2 = person


a = [9394, "pie", 88, 0.00022]
a.each do|n|
  puts "values #{n}"
end
a[1] = 8
a[0] = "Young"
a[2] = "originals"
a[3] = "clusters"

puts a.class

bxp = ['a', 'Kona', 88, "pop"]
puts bxp[2,1]
stack = []
stack.push 9
stack.push 10
stack.push "letto"
print stack

print bxp.first(3)
print bxp.last(2)
h = {'dog' => "canine" , "cats" => "feline", "donkeys" => "asinine"}
print h
