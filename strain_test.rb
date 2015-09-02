require 'minitest/autorun'
require_relative 'strain'

class ArrayTest < MiniTest::Unit::TestCase
  def setup; end

def test_keep_empty
  assert_equal([],[].keep {|e| e.odd?})
end
def test_keep_odd
  arr = [1,2,3]
  assert_equal([1,3], arr.keep{|e| e.odd?})
end

def test_keep_greater_than
  arr = [2,5,10]
  assert_equal([10], arr.keep{|e| e > 7})
end

def test_discard_odd
  arr = [1,2,3,4,5]
  assert_equal([2,4], arr.discard {|e| e.odd?})
end
end
