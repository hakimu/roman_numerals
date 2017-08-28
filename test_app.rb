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

  def test_ones_method
    assert_equal "I", RomanNumeral.new(1).ones_method
    assert_equal "II", RomanNumeral.new(2).ones_method
    assert_equal "III", RomanNumeral.new(3).ones_method
    assert_equal "IV", RomanNumeral.new(4).ones_method
    assert_equal "V", RomanNumeral.new(5).ones_method
    assert_equal "VI", RomanNumeral.new(6).ones_method
    assert_equal "VII", RomanNumeral.new(7).ones_method
    assert_equal "VIII", RomanNumeral.new(8).ones_method
    assert_equal "VIIII", RomanNumeral.new(9).ones_method
  end

  def test_tens_method
    assert_equal "XI", RomanNumeral.new(11).tens_method
    assert_equal "XII", RomanNumeral.new(12).tens_method
    assert_equal "XIII", RomanNumeral.new(13).tens_method
    assert_equal "XIV", RomanNumeral.new(14).tens_method
    assert_equal "XV", RomanNumeral.new(15).tens_method
    assert_equal "XVI", RomanNumeral.new(16).tens_method
    assert_equal "XVII", RomanNumeral.new(17).tens_method
    assert_equal "XVIII", RomanNumeral.new(18).tens_method
    assert_equal "XVIIII", RomanNumeral.new(19).tens_method
    assert_equal "XX", RomanNumeral.new(20).tens_method
    assert_equal "XXI", RomanNumeral.new(21).tens_method
    assert_equal "XXII", RomanNumeral.new(22).tens_method
    assert_equal "XXIII", RomanNumeral.new(23).tens_method
    assert_equal "XXIV", RomanNumeral.new(24).tens_method
    assert_equal "XXV", RomanNumeral.new(25).tens_method
    assert_equal "XXVI", RomanNumeral.new(26).tens_method
    assert_equal "XXVII", RomanNumeral.new(27).tens_method
    assert_equal "XXVIII", RomanNumeral.new(28).tens_method
    assert_equal "XXVIIII", RomanNumeral.new(29).tens_method
    assert_equal "XXX", RomanNumeral.new(30).tens_method
  end

end