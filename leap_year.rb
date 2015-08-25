#leap_year - every year that is evenly divisible by 4
#except every year that is evenly divisible by 100
#unless the year is also evenly divisible by 400

def is_leap_year?(year)
  if year % 4 == 0 
    if (year % 100 == 0 && year % 400 != 0) 
        return false #not leap year
      elsif (year % 100 == 0 && year % 400 == 0)
        return true #is a leap year 
    end
    true #is a leap year
  end
end

puts (is_leap_year?(1996) == true)
puts (is_leap_year?(1997) == true)
puts (is_leap_year?(1998) == true)
puts (is_leap_year?(1900) == true)
puts (is_leap_year?(2400) == true)


