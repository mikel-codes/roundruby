def surround(word, pad_width=word.length / 2)
  puts "<"  * pad_width + word + ">" * pad_width
end
surround("chief")
surround("chief", 10)

def varargs(arg1, *lol)
  puts "arg1=#{arg1} ... vlargs=#{lol.inspect}"
end

varargs("one", "lovely ", "planet")
def double(oo)
  yield (oo * 2)
end

double(3){ |val| puts "its a dream #{val} trio" }
double(190) { |v| puts "its time for dstv #{v}" }

class TaxCalculator
  attr_reader :name
  attr_reader :block
  def initialize(name, &block)
    @name, @block = name, block  #the code block assigned as a Proc object affects only d ampersand variable
  end
  def get_tax(amount)
    puts "#{@name} on #{amount} = #{@block.call(amount)}" #the amount of 
  end
end

tc = TaxCalculator.new("Business Tax"){|amt| amt * 0.05} #the name and the assigned code block reping &block param
tc.get_tax(300)
tc.get_tax(500)

def meth_one
  return "one"
end

def meth_three(arg)
  case
  when arg < 0 then return "negative"
  when arg > 0 then return "postive"
  else return "zero"
  end
end

def meth_ret
  100.times do |num|
    num *= num
    return num if num > 100
  end
end


puts meth_one
puts meth_three(4)
puts meth_ret

puts "multiply(*) or add(+)"
operator = gets
puts "Enter your value for series count using your desired selection"
number = Integer(gets)

if operator =~ /^\*/
  puts (1..10).collect { |num| num = num * number}.join("::")
else
  puts (1..10).collect { |num| num = num + number }.join("<>")
end

#secondly

puts "solve for series"
puts "choose solver : (t)imes or (p)lus"
operator = gets
puts "please enter a number"

Number = Integer(gets)

if operator =~ /^t/
  calc = lambda {|csp| csp = csp * Number}
else
  calc = lambda {|lp| lp = lp + Number}
end

puts (1..10).collect(&calc).join(" | ")
