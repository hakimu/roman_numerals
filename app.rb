# Roman numerals
# 1990 is MCMXC
# 2008 is MMVIII

class RomanNumeral

  ROMAN = {
  1 => "I",
  5 => "V",
  10 => "X",
  50 => "L",
  100 => "C",
  500 => "D",
  1000 => "M" 
  }

  def initialize(number)
    @number = number
  end

  def break_down_number
    @number.to_s.chars.map(&:to_i)
  end

  def find_roman
    ROMAN[@number] || number_of_digits
  end

  def ones_method
    case @number
    when 1..3
      "I" * @number
    when 4
      "IV"
    else
      remainder = @number % 5 
      "V" + ("I" * remainder)
    end
  end
  
  def tens_method
    case @number
    when 11..13
      remainder = @number % 10
      "X" + ("I" * remainder)
    when 14
      "XIV"
    when 15
      "XV"
    when 16..19
      remainder = @number % 15
      "XV" + ("I" * remainder) 
    when 20
      "XX"
    when 21..23
      remainder = @number % 20
      "XX" + ("I" * remainder)
    when 24
      "XXIV"
    when 25
      "XXV"
    when 26..29
      remainder = @number % 25
      "XXV" + ("I" * remainder)
    when 30
      "XXX"     
    end  
  end

  def number_of_digits
    case break_down_number.count
    when 1
      ones_method
    when 2
      "use tens method"
    when 3
      "use hundreds method"
    when 4 
      "use thousands method"
    else
      raise ArgumentError.new("Enter a number 1-3000")
    end
  end

end


