class WordCalculator
  attr :string
  attr_accessor :words
  protected :words

  def initialize(string)
    @string = string
    @words = words
  end


  def words_in_string
    @words = @string.downcase.scan(/[\w']+/)
    return @words
  end

  public
  def counter_in_hash
    count = Hash.new(0)
    for x in words_in_string
      if count.has_key?(x)
        count[x] += 1
      else
        count[x] = 1
      end
    end
    count
  end
    
end

wc = WordCalculator.new("Hello word we are united as one , yes we are")
p wc.words_in_string
puts wc.counter_in_hash

c =  wc.counter_in_hash
x = c.sort_by do |word, a_count|
  a_count
end

print x
puts ''
xo = x.last(4)
# sorted is an array of dual item array of a [key and value]
#
for u in 0...4
  w = xo[u][0]  #retreives words from sorted
  c = xo[u][1]
  puts "#{w}: #{c}"
end





