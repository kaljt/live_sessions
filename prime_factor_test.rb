require 'minitest/autorun'
require_relative 'prime_factor'

class PrimeFactorTest < Minitest::Unit::TestCase
  def setup; end

  def test_2
    assert_equal([2], PrimeFactor.factors(2))
  end

  def test_4
    assert_equal([2,2], PrimeFactor.factors(4))
  end

  def test_221

    assert_equal([13,17], PrimeFactor.factors(221))
  end

  def test_345

    assert_equal([3,5,23], PrimeFactor.factors(345))
  end

  def test_23
    assert_equal([23], PrimeFactor.factors(23))
  end

end
