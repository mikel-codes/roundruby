class Vowelfinder
  include Enumerable
  attr_reader :string
  def initialize(string)
    @string = string
  end 
  def each
    @string.scan(/[aeiou]/) do |vowel|
      yield vowel
    end
  end
end

vf = Vowelfinder.new("Matty goes to school")

puts vf.inject(:+)
num = 0306

4.times do
  puts "#{num.class}: #{num}"
  num *= num
end
