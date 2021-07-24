# module to be debugged
require_relative 'romans.rb'

# T
# his code module aids in unit testing
# that breaks the code class that requires output at a particular block
# against the expected value
# This is the module that aids the debugging process
require 'test/unit'
# the class that extends the packages of this test unit as child 
class Y < Test::Unit::TestCase
  # a simple fn to run
    R = { 1 => "i", 10 => 'x', 5 => 'v', 6 => 'vi', 50 => 'l' }
    
    # compare the actual output to what was in my code
    # if any noted differences complain bitterly
    # 'i' expected output   , (actual object output)

  def test_simple   
    R.each do |k, v|
      assert_equal(v, RomanNumerals.new(k).xp_converter)
    end
  end
  
  def test_range
    RomanNumerals.new(9)
    RomanNumerals.new(89)
    
    assert_raises(RuntimeError) {RomanNumerals.new(0)}
    assert_raises(RuntimeError) {RomanNumerals.new(6000)}
  end
end

y = Y.new()
y.test_simple
y.test_range
