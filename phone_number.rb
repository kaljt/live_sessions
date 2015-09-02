class PhoneNumber
  attr_reader :number

  def initialize(num)
    @number = clean(num)
  end


  #def number
  #  @number = clean(num)
  #end

private
  def clean(num)

    num = num.gsub(/\D/, '')
    if num.length !=10
      nil
    else
      num
    end

  end


end
