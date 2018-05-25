class Stack
  # methods: push, pop, peek, isEmpty?, clear, size, print
  attr_accessor :items

  # clear stack
  def clear
    @items = []
  end

  # create new stack
  def initialize(items = [])
    @items = items
  end

  # verify if stack is empty
  def isEmpty?
    @items.empty?
  end

  # returns the topmost element of the stack
  def peek
    last_element_index = @items.length - 1
    @items[last_element_index]
  end

  # remove an element from stack
  def pop
    @items.pop
  end

  # display elements in the stack
  def print
    @items.join(', ')
  end

  # add an element to the stack
  def push(element)
    @items.push(element)
  end

  # returns the number of elements in the stack
  def size
    @items.length
  end
end
