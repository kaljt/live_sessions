require 'minitest/autorun'
require 'minitest/pride'
require_relative 'todo'

class TodoTest < MiniTest::Unit::TestCase
  def setup
    @list = TodoList.new
  end
  def test_todo_empty
    assert_equal(@list.empty?, true)
  end

  def test_todo_1
    @list.<<('Buy milk')
    assert_equal(@list.size,1)
  end

  def test_todo_1_message
    @list << "Buy milk"
    assert_equal(@list.first,'Buy milk')
  end

  def test_todo_each
    @list << "Clean room"
    @list << "Attend live session"

    new_array = []
    @list.each{|todo| new_array << todo }
    assert_equal(new_array, ['Clean room', 'Attend live session'])
  end
end
