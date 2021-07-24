class Hbo
  attr_reader :unique, :index
  attr_accessor :path, :text

  
  def initialize(path="",text="")

    @unique = []
    @index = []
    @path = path
    @text = text
    add_text(text)
  end
 
  def add_text(text)
    word = text.split
    word.each {|word| add_word(word)}
  end
  
  
  def add_word(word)
    i = unique_index_of(word) || add_word_index(word)
    @index << i
  end
  def unique_index_of(word)
    @unique.index(word)
  end
 
  def add_word_index(word)
    @unique << word
    @index << unique.size - 1 
  end

  def compressor()
    x = ""
  
    File.open(@path) do |f|
      x += f.read()
      f.close()
    end
    text = x.split(" ")
    
    text.each do |word|
      i = @unique.index(word)
      if i
        @index << i
      else
        @unique << word
        @index  << unique.size - 1
      end
    end
  end

  def ==(other)
    return true if other.equal?(self)
    return false unless other.instance_of?(self.class)
    unique == other.unique && index == other.index
  end

end

class Trio < Hbo
  attr_reader :folder, :name
  def initialize(folder, name)
    @folder = folder
    @name = name
  end
  def ==(other)
    return true if other.equal?(self)
    return false unless other.kind_of?(Trio)
    path == other.folder && text == other.name
  end
end

text = "Hello world wide web yes we web it all"

k = Hbo.new("/root/Desktop/PaymentNigeria")
print k
print k.class
b = Hbo.new("",text)
k.compressor
print  k.unique
puts
print k.index
puts
print %q{ presenting info for the 'b' with text }
puts 
print b.unique
puts 
print b.index
text = "Hello world wide web yes we web it all"

c= Hbo.new("",text)
x = Hbo.new("",text)
puts "these objects match" if x==x



puts " " 
puts ''''''
print k
print k.class
puts '_________'

puts b
puts b.class

puts "This is x"
puts x
puts x.class
puts c

puts "computing a comparison"
puts k.equal?(k)
puts self

t = Trio.new("", text)
puts t == x
