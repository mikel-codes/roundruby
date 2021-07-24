require 'test/unit'
require 'minitest/autorun'
require_relative 'rome2.rb'

class TestScript < Test::Unit::TestCase
  NUMBERS = { "i" => 1, "v" => 5, "x" => 10, "c" => 100, "ix" => 9 }
  def testHandler
    assert_equal("i", Rome.new(1).roman_converter)
    assert_equal("xic", Rome.new(199).roman_converter)
  end

  
    #helps mks test more concise
  
  def testInA_range
  
    NUMBERS.each do |roman, number|
       assert_equal(roman, Rome.new(number).roman_converter, "invalid value")
      end
   end
 def testNil
     test = User.find(2)
     refute_nil(test)
   end

 
 def test_Exc
 
   #Romans.new(0)
     #Romans.new(0121)
     assert_raises(RuntimeError) { Romans.new(0) }
   end
  end


