require 'prime'

class Prime

  def self.nth(n)
    count = 0
    current_prime = 2
      while true

        if self.is_prime?(current_prime)

          count += 1
          if count == n
            break
          end
          current_prime +=1
        else
          current_prime +=1
        end

      end

    current_prime
  end

  def self.is_prime?(v)
    #(v == 2 || v == 3) || ((v % 2 != 0) && (v % 3 !=0))
    prime?(v)
  end
end
puts Prime.nth(1)
puts Prime.nth(2)
puts Prime.nth(6)
puts Prime.nth(7)
puts Prime.nth(10)
puts Prime.nth(10001)
