class ScoreKeeper
  def initialize
    @total_count = @count = 0
    @project = []
  end
  def <<(score)
    @total_count += score
    @count += 1
    return self
  end

  def average
    fail "No scores" if @count.zero?
    return (Float(@total_count) / @count) + 0.5
  end

  def []=(*params)
    value = params.pop
    puts "Indexed with #{params.join(", ")}"
    puts "value is #{value.inspect}"
  end

  def [](offset)
    return @project[offset]
  end

  def projects=(list)
    @project=list.map(&:upcase)
  end
  
end

score = ScoreKeeper.new
score << 10 << 10 << 21
score.projects = %w{ The world is a game }
puts score[1]

puts "#{score.average}"
score[1] = [2,3,4]
score['cat', "dog"] = "enemies"

alias backticks `
def `(cmd)
  result = backticks(cmd)
  if $? != 0
    fail "command #{cmd} failed , exit status #{$?.exitstatus}"
  end
  return result
end

class Bowdlerize
  def initialize(string)
    @value = string.downcase.gsub(/[^aeiou]/, "()")
  end
  def +(other)
    return Bowdlerize.new(self.to_s + other.to_s)
  end
  def to_s
    return @value
  end
end

bd = Bowdlerize.new("Gbeeey Eba")
puts bd
bd += "lol"
puts bd
puts nil

puts defined? yield
puts defined? 2.abs
puts defined? lamda

  File.foreach("/root/Desktop/simple_write.c") do |line|
  next if line =~ /^#/

  puts line if line =~ /eig/ .. line =~ /nin/ unless line =~ /^$/
end
