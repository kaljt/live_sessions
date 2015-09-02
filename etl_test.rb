require 'minitest/autorun'
require_relative 'etl'

class ScrabbleScoreTest < MiniTest::Unit::TestCase
  def setup; end

  def test_empty
    old = {}
    assert_equal({}, ScrabbleScore.convert(old))
  end

  def test_one
    
    old = {1=> ['A','E','I','O','U']}
    assert_equal({'a' => 1, 'e' => 1,
                  'i' => 1, 'o' => 1,
                  'u' => 1}, ScrabbleScore.convert(old))
  end

  def test_two

    old = {1 => ['A','E'], 2=> ['D','G']}
    expected = { 'a' => 1,
                'e' => 1,
                'd' => 2,
                'g' => 2 }
    assert_equal(expected, ScrabbleScore.convert(old))
  end

end
