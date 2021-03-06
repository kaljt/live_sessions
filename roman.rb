#roman numeral converter
#thousands - hundreds - tens - ones
class Fixnum

  def to_roman
    "#{thousands}#{five_hundreds}#{hundreds}#{fiftys}#{tens}#{fives}#{ones}"
  end

  def thousands
    'M' * (self / 1000 )
  end

  def five_hundreds
    remainder = self % 1000
    return "CM" if remainder >= 900
    return "D" if remainder >= 500
  end

  def hundreds
    remainder = self % 1000
    return "" if self < 100
    return "" if remainder >= 500
    return "CD" if remainder >=400
    return "C" * (remainder / 100)
  end

  def fiftys
    remainder = self % 100
    return "" if remainder < 50
    return "XC" if remainder >= 90
    return "L" if remainder >= 50
  end

  def tens
    remainder = self % 100
    return "" if remainder >=50 || remainder < 10
    return "XL" if remainder >= 40
    return "X" * (remainder / 10)
  end

  def fives
    remainder = self % 10
    return "" if remainder < 5
    return "IX" if remainder == 9
    return "V" if remainder == 5
    return "V" << "I" * (remainder - 5 )

  end

  def ones
    remainder = self % 10
    return "" if remainder > 4
    return "IV" if remainder == 4
    return "I" * remainder
  end
end

