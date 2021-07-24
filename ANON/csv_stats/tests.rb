require_relative 'wordcount'
require 'test/unit'


class TestWordsCalculator < Test::Unit::TestCase

 
  def test_empty_string
    assert_equal([], WordCalculator.new("").words_in_string)
  end

  def test_single_word
    assert_equal(["cat"], WordCalculator.new("cat").words_in_string )
  end
end
