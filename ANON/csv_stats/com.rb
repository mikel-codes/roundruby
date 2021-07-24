class EnumsTest 
  def initialize
    puts "Enumerators when worked explicitly can generate infinite sequence"
    puts 
  end

  public
  #Enums as a normal version
  #seen basically as generators and/or filters
  def taskforce_select(enum, &block)
    Enumerator.new do |current_value| # this default serves as the new generator for the enum generator to processed
      enum.each do|value|             # this iterates careful through enum passed 
        current_value.yield value if block.call(value)   #only provide a value if its within check by code blocks
      end
    end
  end

  #Enums as a lazy version
  
  public
  def all
    Enumerator.new do|yielder, n: 0|
     loop { yielder.yield (n += 1) }
    end.lazy
  end

  def palidromes?(n)
    n = n.to_s
    n == n.reverse
  end
end

triangular_nums = Enumerator.new() do |yielder|
  num = 0; count = 1
  loop do
    num += count; count += 1
    yielder.yield num
  end
end

et_live = EnumsTest.new()
p et_live.taskforce_select(triangular_nums) { |val| val % 10 == 0 }.first(10)

puts 
puts "Now in the lazy version of explicit Enumerators"
p et_live.all.first(10)

p et_live.all.select{|i| (i % 3).zero?}.select { |i| et_live.palidromes?(i) }.first(10)


#predicates as free standing processes
multiple_threes = -> n { (n % 3).zero? }
puts 
puts "using predictes as procs for readabilty and reusability"
p et_live.all.select(&multiple_threes).first(6)


