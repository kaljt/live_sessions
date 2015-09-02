#todo list

class TodoList
  attr_accessor :todos
  def initialize
    @todos = []
  end
  def empty?
    todos.empty?
  end
  def <<(todo)
    todos << todo
  end
  def size
    todos.size
  end
  def first
    todos[0]
  end
  def each
    i = 0
    while i < todos.size
      yield todos[i]
      i+=1
    end
  end
end
