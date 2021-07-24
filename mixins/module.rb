module Dev
  def nc
     "#{self.class.name} (id: #{self.object_id}): #{self.name}"
  end
end


class Photography
  include Dev
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class EitTrack
  include Dev
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

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

pg = Photography.new("West Life")
et = EitTrack.new("Sskss")
p1 = Person.new("Katty")
p2 = Person.new("Cj")
p3 = Person.new("Lovelace")

puts pg.nc
puts et.nc 

if p2 < p1
  puts "#{p2.name} name > #{p1.name}"
end 


  puts "((((Sorted List))))"
puts [p1,p2,p3].sort
