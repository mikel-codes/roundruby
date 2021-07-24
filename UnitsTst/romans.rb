class RomanNumerals
  attr :value
  MAX_VAL = 4999
  FACTORS = [["M", 1000], ["CM", 900], ["D",500], ["CD", 400], ["C", 100], ["xc", 90], ["l",50], ["xl", 40],
  
             ["x",10], ["ix",9], ["v",5], ["iv", 4], ["i", 1]]


  def initialize(value)
    if (value < 1 || value > MAX_VAL)
      fail "This input #{value} for roman numeral is invalid\n Romans uses (1 ~> 4999) range"
  
    end
    @value = value
  end


  def xp_converter
    romans = "" # create the string object
    for code, counts in FACTORS  #consider the match of sublist of list Factors
      if counts <= @value        # make it fast use only values relevant
        c, @value = @value.divmod(counts)     # returns an array of dividend and modulus(remanider in the loop**
        # append recovered values*romans  in setssublists* that match to the string
        romans << code * c unless c.zero?
      end
    end
    romans
  end
end

