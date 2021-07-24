require 'test/unit'

class Rome
  ROMANS = [["M", 1000], ["CM", 900], ["D",500], ["CD", 400], ["C", 100], ["xc", 90], ["l",50], 
            ["xl", 40],["x",10], ["ix",9], ["v",5], ["iv", 4], ["i", 1]]

  MAX = 4999
  attr:value

  def initialize(val)
    if (val <= 0 || val > MAX)
      fail "The input value #{val} for conversion is invalid \n Roman Numerals Valid for (1 - 4999)\n ....Try again "
    end
    @value = val
  end

  def roman_converter
    romans = ""
    for rome, count in ROMANS
      if count <= @value
        c, @value = @value.divmod(count)
        romans << rome * c unless c.zero?
      end
    end
    romans
  end
end

y = Rome.new(233).roman_converter
puts y


