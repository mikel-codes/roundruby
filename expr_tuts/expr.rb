class ScoreAve
  attr_reader :count
  def initialize(count = 0)
    @total_scores = 0
    @count = count
  end
  def <<(score)
    @total_scores += score
    @count += 1
    self
    end
  def compAve
    Fail "No scores found" if @count.zero?
    Float(@total_scores) / @count
  end
end

sV = ScoreAve.new
sV << 30 << 200 << 20
puts "Average = #{sV.compAve}"


class SomeClass
  def []=(*param)
    value = param.pop()
    puts "Indexed with = #{param.join(",")}"
    puts "Value of params is #{value.inspect}"
  end
end

alias bkquotes ` # rename backticks which evaluates an expression to a OS command
def `(cmd)
  result = bkquotes(cmd)
  if $? != 0
    print "Last command **#{cmd}** :: Exit Status => #{$?.exitstatus}"
  end
  return result
end
puts  `date`
print `ls -l /etc/wibble`

s = SomeClass.new
puts "#{s.[]=(2)}"

#the good thing about ruby is everything is an object
#so almost every thing is customizable 
class ProjectList
  def initialize
    @projects = []
  end
  def project=(list)   #This is a writable object method because its ends with an assignment(=) to something
    @projects = list.map(&:upcase)
  end
  def [](other)     # we simply customize the list indexer as the projects return value for a given offset*
    return @projects[other]
  end
end

pl = ProjectList.new
pl.project = %w{ The sands of time revolve } #This is writes 
puts pl[2]

class Bowdlerize
  attr_reader :value
  def initialize(string)
    @value = string.gsub(/[aeiou]/,  "*")  # this constructor only creates an object reference
  end

  def +(val) # define operator as method
    Bowdlerize.new(self.to_s + val.to_s)
  end
  def to_s
    @value
  end
end
b  = Bowdlerize.new("yello")
puts b.to_s
puts b += "life"



class Fi
  def looping
    file  = File.open("ordinal")   # automatically open file for reading return the file obj as file
    while line = file.gets    # as the object moves has a readline attributes(interpreted as gets)
      print line if line =~ /third/ .. line =~ /fourth/
    end

    puts "*********************"
    File.foreach("ordinal").grep(/d$/) do |line|
      if (($. == 1)) .. (($. == 3) || line =~ /sev/)
        print line
      end
    end
   
  end
  def rubycase
    com2 = gets
    puts "Enter your raw input for command"
    command = gets
    output = case 
             when command = "debug" then 
                puts "its local"
             when command = "exit"  then 
               puts "exiting program only on string(no actions)"
             else puts "unrecognized type"
  
             end
    outlet = if com2 == "debug" then 
               puts "its too logical"
             elsif com2 == "lobal" then
               print "why now bross"
             else
               puts "This is default"

             end
    return outlet

  end
  def yoga!
    File.foreach("/root/Desktop/mini.html") do |line|
      next if line =~ /\/\w>$/  
      print line unless line =~ /^<\S/
  end
  end
  def magma
    mon, day , year = $1, $2, $3 if `date` =~ /(\d\d)-(\d\d)-(\d\d)/ 
    puts  "a = #{a}" if $DEBUG
    print total unless total.zero?
  end

  def ==(other)
    puts "Comparing self == #{other}"
    other == "value"
  end
  public 
  def !=(other)
    puts "Comparing self == #{other}"
    other == "value"
  end
end
f = Fi.new()
p(f ==("logistics"))
p(f == (("value")))
p(f != ("fokus"))
puts f.yoga!
p(f != "value")
p (f.rubycase)
p (f.looping)

for i in File.open("ordinal").find_all {|line| line =~ /d$/}
print i.chomp, " "
end
 a = "wonders"
 x = 0

 [818, 900 ,292].each do|x|
   a = x + 1
   print a, " "
end
p [a , x]
i = 0
i = 18
loop do 
  i += 2
   next if i < 3
   print i," "
      break if i > 30
end

