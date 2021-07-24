
class RomanNumerals
  FACTORS = [["m", 1000], ["cm", 900], ["d", 500], ["cd", 400], ["c", 100], ["xc", 90], 
             ["l", 50], ["xl", 40], ["x", 10], ["ix", 9],
             ["v", 5], ["iv", 4], ["i", 1]]
  MAX_NUM = 4999
  attr_accessor :value
  
  def initialize(valuetoConvert)
    if valuetoConvert > 4999 || valuetoConvert < 1 then
      fail "Roman numerals only supports range 1 - 4999"
    end
    @value = valuetoConvert
  end

  def to_s
    roman = ""
    FACTORS.each do|code, num|
         count, @value = @value.divmod(num)
         roman << code * count unless count.zero?
    end
    return roman
  end
end



