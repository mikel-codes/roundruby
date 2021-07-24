class Foo
  def mea__
    words = Hash.new(0)  #/// creates the hash like a dict
    File.foreach("/root/Desktop/gates") do |l| # look at each line
       l.scan(/\w+/) do |w|  # try to match words on a line
         w = w.downcase      # words found should be lower alphas
         words[w] += 1       # dict value for key shows count per word meet
       end
    end
    # we consider all key in this populated hash
    words.keys.sort.each {|w| puts "@key #{[w]} ... @value #{words[w]}"}   #
  end
  # This is different because it first creates an object 
  # does all necessary and writes them back to this object

  #private
  def fibres_mea__
    v = Fiber.new do
      File.foreach("/root/Desktop/gates") do |line|
        line.scan(/\w+/) do |w|
          Fiber.yield w.downcase  # fibres should contain each of thos values(words) as small letter
        end
      end
      nil
  end
    # then after we hve our object
    counts = Hash.new(0)
    while vz = v.resume  # read from this object 
      counts[vz] += 1    # and assigns values for hash type
    end
    counts.keys.sort.each{ |w| puts "@key #{w} ... #{counts[w]}" }
  end

  def __evenDivisible
    evens = Fiber.new do
      num = 2
      loop do
        Fiber.yield(num) unless num % 3 == 0
        num += 2
      end
    end

    n = evens.resume
    n1 = evens.resume
    
    10.times {print evens.resume, " "}



  end
end



D = Foo.new()
D.mea__
puts
D.fibres_mea__
puts
D.__evenDivisible
