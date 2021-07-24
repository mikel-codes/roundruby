#!/usr/bin/env ruby -w
$LOAD_PATH << '.'
require "unit.rb"
require "test/unit"
puts
BEGIN {
  puts "This is a test script ruby debugger"
}
module Trilogy
  def Trilogy.triology
    x = [3,4,5,6]
    for i in x 
      print "#{i} "
    end
  end
end
Trilogy.triology

class TestRoman < Test::Unit::TestCase
  include Trilogy
  TESTNUMS = {"i" => 1, "dccc"=> 800, "xc" => 90, "mc" => 1100}

  def testClass
    assert_equal("ix", (RomanNumerals.new(9)).to_s)
    TESTNUMS.each do|arabic, numeral|
 
      romanObj = RomanNumerals.new(numeral)
      if assert_equal(arabic, romanObj.to_s) then
        puts "valid out outcome"
      end
    end
  end

def test_range
# no exception for these two...
RomanNumerals.new(1)

RomanNumerals.new(4999)
# but an exception for these
assert_raises(RuntimeError) { RomanNumerals.new(0) }
assert_raises(RuntimeError) { RomanNumerals.new(5000) }
end

  def testExceptions
    x  = [1,3, 0, 5000]
    for i in x
      assert_raises(RuntimeError, StandardError) {
        RomanNumerals.new(5000)
      }       
    end
  end
end


