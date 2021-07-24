class Prototype
  attr :name, :folder, :id
  def initialize(name, folder, id)
    @name = name
    @folder = folder
    @id = id
  end
  
  #since if a.eql?(b) then their hashes must return same a.hash == b.hash
  #by the use of exclusive or we look at one property at a time
  def hash
    folder.hash ^ name.hash
  end

  def eql?(other)
    return false unless other.instance_of?(self.class)  #just a check first
    name == other.name && folder == other.folder        #then lk in2 these if testpassed 
  end
    

end

hash = Hash.new(0)
type1 = Prototype.new('life', 'spree', "fun")
doc = Prototype.new(1,4,5)
hash[doc] = type1
the_dic = hash[doc]
puts "the hash value of type 1 is #{the_dic}"
puts the_dic.hash
find = 3
puts find
find = "Jo"
puts find

puts doc.eql?(the_dic)

puts Float === 1.0

obj = 9393283
case obj
when String
 puts 'its a string'
when Float
  puts 'its a float'
when Fixnum
  puts 'its a Fixnum'
else
  puts 'unknown'
end


hand_built_stub_printer = Object.new
def hand_built_stub_printer.available?
  return true
end
def hand_built_stub_printer.render(content)
  nil
end

puts hand_built_stub_printer.available?

