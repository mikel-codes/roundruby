uncoperative="more fun than useful"
def uncoperative.class
  "jist telling singletons"
end

puts uncoperative
class Doc
  def initialize()
  end

end
c = Doc
def c.explain
  puts "self is of type #{self}"
  puts "self class is of #{self.class}"
end

puts c.explain
 gameChanger  = Object.new
 cnp = "what have you"
 puts cnp
 puts cnp.class
 tetx = Object.new
 puts tetx
 puts tetx.class
 
 class << tetx
   def closure
     "its a test"
   end
   def render(abv)
     closure.to_s
   end
 end
 
 puts tetx
 puts tetx.class
 #singleton_class = class << 
                       
 f = 4 + 3 +
     3 + 3

puts f

s = %q{\@ \n 2S$ %%hello world wide web}

syy = %{\@ \n 2S$ %%hello world wide web}

b = %i{one to five}

c = %i[when we fly]
p s
p syy
p b
p c

_shell_cmd = %x(date)
cmd =%x(df -h)
puts _shell_cmd

puts cmd
p %r{man|makes|machines}
p %s!sudo!

x =%q/this is a string/
b = %q-string-
c = %q(a (nested) string)


p %q/this is a string/
p %q-string-
%q(a (nested) string)

meth = %{ def fred(a)
      a.each{ |c| puts c }
      end
}

puts meth
puts 82328_3823
puts 0x828afd
puts 0b10_10
puts 0d8393
puts 0x0906

puts 0o2124
puts 04427

puts 1.0e3

puts 123e2
p %q(escape a\) with backslash)

print <<HERE
 This is a double quoted 
 here document.
 The time is #{Time.now}
HERE

print <<'HERE'
 This is a double quoted 
 here document.
 The time is #{Time.now}

HERE

puts 'JOe' 'dlae;'
3.times do
  print "Hello".object_id, " "
  print  3.object_id, " "
end
puts 

p Regexp.new( 'pattern')

class DockBils
  attr :games, :fun, :fin
  def initialize(g, f, fin=44)
    @games = g; @fun = f; @fin=fin;
  end
  def inferences()
    puts "this is a #{@games}"
  end
end

doc = DockBils.new("pep", "flakes")


def a 
  puts "Function 'a' has been called"
  33
  #"holla hoop"
end

for i in  1..2; if i == 2
    puts "i == 23,a=#{a}";
  else 
    a = 1; puts "i==1, a=#{a}"
  end
end

a = 1 if false; a
OU=33
puts "The value of this constant is #{OU}"
class Trip
  CLASS_CONST = OU + 1
  @@dl = 300
  attr_reader :count
  def get_const
    CLASS_CONST
  end
  def initialize(count=1, distance=234)
    @@dl -= distance; @count = count + 2
  end
  def Trip.get_distance
    @@dl
  end
  def Trip.get_count
    self.count
  end
  def Trip.dl=(dl)
    @@dl = dl
  end
  def Trip.dl
    @@dl
  end
end

p Trip.new().get_const
p Trip::CLASS_CONST
p ::OU
Trip::NEW_CONST= 22

p Trip.get_distance
Trip.dl = 939
p Trip.dl


