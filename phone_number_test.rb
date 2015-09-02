require 'minitest/autorun'
require 'minitest/pride'
require_relative 'phone_number'

class PhoneNumberTest < MiniTest::Unit::TestCase

  def setup

  end

  def test_valid_number
    p_number = PhoneNumber.new ('1A3BC67Z9C')
    assert_equal(nil, p_number.number)
  end

  def test_length_number
    p_number = PhoneNumber.new ('12345678910')
    assert_equal('2345678910', p_number.number)
  end

  def test_eleventh_digit
    p_number = PhoneNumber.new ('52345678910')
    assert_equal(nil, p_number.number)
  end

  def test_cleans_number
    p_number = PhoneNumber.new('(123) 456-7890')
    assert_equal('1234567890', p_number.number)
  end

  def test_display_number
    p_number = PhoneNumber.new('1234567890')
    assert_equal('(123) 456-7890', p_number.to_s)
  end

  def test_less_than_10_digits
    p_number = PhoneNumber.new(123456789)
    assert_equal(nil, p_number.number)
  end

  def test_greater_than_11_digits
    p_number = PhoneNumber.new(234567891011)
    assert_equal(nil, p_number.number)
  end

end
