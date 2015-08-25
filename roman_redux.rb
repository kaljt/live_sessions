  class Fixnum
    SPECIAL_CASES = { ones: {1=> 'I', 4=> 'IV', 5=> 'V', 9=> 'IX'},
      tens: {1=> 'X', 4=> 'XL', 5=> 'L', 9=> 'XC'},
      hundreds: {1=>'C', 4=> 'CD', 5=> 'D', 9=> 'CM'}}

    def to_roman
      "#{thousands}#{to_roman_digit(self % 1000 / 100, :hundreds)}#{to_roman_digit(self % 100 / 10, :tens)}#{to_roman_digit(self % 10, :ones)}"
    end

  def thousands
    result = ""
    (self / 1000).times{result << "M"}
    result
  end

  #def ones
  #  remainder = self % 10
#
  #  return "IX" if remainder == 9
  #  return "V" if remainder == 5
  #  return "IV" if remainder == 4

    #result = ""

  #  if (1..3).include? remainder
  #    result = "I" * remainder
  #  elsif (6..8).include? remainder
  #    result = "V"
  #    result += "I" + (remainder - 5)
  #  end
  #  result
#
#
#  end
#  def hundreds
#    hundreds = self % 1000 / 100
#
#    return "CM" if hundreds==9
#    return "C" if hundreds == 5
#    return "CD" if hundreds == 4
#
  #  result = ""
#
  #  if (1..3).include? hundreds
  #    return "C" * hundreds
  #  elsif (6..8).include? hundreds
  #    result = "D"
  #    result << "C" * (hundreds - 5)
  #  end
#
#
#  end
#  def tens
#    tens = self % 100 / 10
#
#    return "XC" if remainder >= 9
#    return "L" if remainder >= 5
#    return "XL" if remainder >=4
#    result = ""
#    if (1..3).include? tens
#      result = "X" * tens
#    elsif (6..8).include? tens
#        result = "L"
#        result << "X" * (tens - 5)
#  end


  def to_roman_digit(digit, place)
    return nil unless (1..9).include? digit
    return SPECIAL_CASES[place][9] if digit == 9
    return SPECIAL_CASES[place][5] if digit == 5
    return SPECIAL_CASES[place][4] if digit == 4
    result = ""
    if (1..3).include? digit
      result = SPECIAL_CASES[place][1] * digit

    elsif (6..8).include? digit
      result = SPECIAL_CASES[place][5]
      result += SPECIAL_CASES[place][1] * (digit - 5)
    end

  end

end
