
class Person
  include Comparable
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def to_s
    "#{@name}"
  end

  def <=>(other)
    self.name <=> other.name
  end
end

p1 = Person.new("Mayz")
p2 = Person.new("Colony")
p3 = Person.new("Uee")

if p1 > p2
  puts "#{p1} > #{p2}"
end
puts "Sorted Lists: "
puts [p1, p2, p3].sort
