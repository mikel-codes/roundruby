class Indict
  attr_accessor :one, :two
  attr_reader :val
  def initialize
    self.one = 1
    @val = 23
    self.two = 200
  end
  def top(arg)
    if block_given?
      puts "Yhis block is given to 1 yield  #{yield}"
    else
      arg
    end
  end

  def sec
    if block_given?
      puts "This block is for two #{yield}"
    end
  end
end


I = Indict.new
puts I.one

puts I.val
puts I.two

puts I.top I.sec {
  "three"
}

puts I.top I.sec do
  "done"
end
 def top(arg)
    if block_given?
      puts "Yhis block is given to 1 yield  #{yield}"
    else
      arg
    end
  end

  def sec
    if block_given?
      puts "This block is for two #{yield}"
    end
  end

  result = top sec { 
    "helo"
  }

  res = top sec do
    "dl"
  end
puts "#{result}"
puts "#{res}"
