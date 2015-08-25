#prime modified

class Prime

  def self.nth(target)
    raise ArgumentError if target <= 0

    number = 0
    primes = []

    while primes.size < target
      primes << number if is_prime?(number)
      number += 1
    end

    primes.last

  end

  def self.is_prime?(num)
    number_of_factors = 0
    (1..num).each do |iteration|
      if (num % iteration == 0)
        number_of_factors +=1
      end
    end
    if number_of_factors > 2 || number_of_factors < 2
      return false
    else
      true
    end

  end
end

puts Prime.nth(1)
puts Prime.nth(2)
puts Prime.nth(6)
puts Prime.nth(10001)