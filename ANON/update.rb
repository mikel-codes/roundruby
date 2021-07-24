Z = puts "long".length
if Z.class
  puts "its a class"
else
  return Z
end

puts "Eicl".index("c")

def getta(name)
  if !name.nil?
    return "games men play " + name
  else
    "since its null , its just games played"
  end
end
puts getta("Jist")

$league = "its a concert"
class Testo
  def globals=(name)
    puts "inside ruby setter's method "
    if $league.length > 7
      puts "better expect a movie title"
    end
    $league = name
    puts "successfully set global variable to #{name}"
  end
end


t = Testo.new
t.globals=("Youth")
puts "#{t.inspect}"
a = [2, 4, 5, "content"]
puts "#{a.inspect}"

walker = %w{ games we can concern about its good smart and cool}
puts "Starting the session for the arrray\n #{walker}"
walker.each.inject(0){|i,v| puts "item at #{i} is #{v}"}

puts "#{nil.inspect}"

abc=Hash.new(9)

p abc['ruby']
abc['ruby'] = abc['ruby'] + 1
p abc.inspect

today = Time.now
print "toay is #{today}\n"

if today.saturday?
  puts "today is saturday"
elsif today.sunday?
  puts "today is sunday"
elsif today.monday?
  puts "work starts"
else
  puts "unspecified"
end
square = 4
while square < 2000
  square = square * 100
  p square.to_s
  if square > 2020
    puts "its a decade from 2010"
    break
  end
end
3.times{ print '()'}

def jokes 
  puts "The joke method starts here"
  yield
  yield
  puts "The joke method ends here"
end

jokes {puts "its the new player"}

