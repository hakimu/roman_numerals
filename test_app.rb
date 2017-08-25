require 'minitest/autorun'
require 'minitest/rg'

require_relative 'app'

class RomanNumeralTest < Minitest::Unit::TestCase

  def test_find_roman
    expected_1 = "I"
    expected_5 = "V"
    expected_10 = "X"
    assert_equal expected_1, RomanNumeral.new(1).find_roman
    assert_equal expected_5, RomanNumeral.new(5).find_roman
    assert_equal expected_10, RomanNumeral.new(10).find_roman
    assert_equal "VI", RomanNumeral.new(6).find_roman
    assert_equal "use tens method", RomanNumeral.new(11).find_roman
    assert_equal "use hundreds method", RomanNumeral.new(111).find_roman
    assert_equal "use thousands method", RomanNumeral.new(1111).find_roman
  end

  def test_break_down_number
    expected_one = [6]
    expected_two = [6,6]
    expected_three = [6,7,8]
    expected_four = [1,2,3,4]
    assert_equal expected_one, RomanNumeral.new(6).break_down_number
    assert_equal expected_two, RomanNumeral.new(66).break_down_number
    assert_equal expected_three, RomanNumeral.new(678).break_down_number
    assert_equal expected_four, RomanNumeral.new(1234).break_down_number
  end

  def test_number_of_digits
    assert_equal "VI", RomanNumeral.new(6).number_of_digits
    assert_equal "use tens method", RomanNumeral.new(66).number_of_digits
    assert_equal "use hundreds method", RomanNumeral.new(678).number_of_digits
    assert_equal "use thousands method", RomanNumeral.new(1234).number_of_digits
  end

end