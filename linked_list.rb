require 'pry'
class Node

  attr_accessor :value, :_next

  def initialize(val)
  @value = val
  end
end

class List
  # attr_accessor :head, :tail
  include Enumerable

  def initialize(nodes=[])
    @tail = @head = nil

    return if nodes.empty?

    @head = nodes.first
    @tail = nodes[nodes.length - 1]

    nodes.each_with_index do |node, idx|
      node._next = nodes[idx+1] unless idx == nodes.length - 1
    end
  end

  def empty?
    @tail.nil? && @head.nil?
  end

  def to_s
    "#{self.head}, #{self.tail}"
  end

  def append(node)
    if self.empty?
      @tail = @head = node
    else
      @tail._next = node
      @tail = node
    end
  end
  alias_method:<<, :append

  def prepend(node)
    if empty?
      @tail = @head = node
    else
      node._next = @head
      @head = node
    end
  end

  def display
    self.each {|node| puts node.value}
    #current_node = @head
    #loop do
    #  puts current_node.value
    #  if current_node == @tail
    #    break
    #  else
    #  current_node = current_node._next
    #end
  #end
  end

  def select
    List.new(super)
  #new_list = List.new
  #each {|node| new_list << node if yield(node)}
    #current_node = @head
    #loop do
    #  new_list.append(current_node) if yield(current_node)
    #  if current_node == @tail
      #  break
    #  else
    #  current_node = current_node._next
    #  end
#
    #end
  #new_list
  end

  def each
    current_node = @head
    loop do
      yield(current_node)
      if current_node == @tail
        break
      else
      current_node = current_node._next
      end
    end
  end
end




node1 = Node.new(1)
node2 = Node.new(2)
node0 = Node.new(0)
#node3 = Node.new(3)

list = List.new
list << node1
list << node2
list.prepend(node0)
#list.append(node3)
#puts list.inspect
list.display
new_list = list.select {|node| node.value.odd?}
puts "New List:"
new_list.display
puts "Each list:"
#list.each {|node| puts node.value}
list.display

fh = File.new('linked_structure','w')
fh.puts today = Time.now
list.each {|node| fh.puts node.inspect}
new_list.each {|node| fh.puts node.inspect}
fh.close
