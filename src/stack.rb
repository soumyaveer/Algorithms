class Stack
  # methods: push, pop, peek, isEmpty, clear, size
  attr_accessor :items

  def initialize(items = [])
    @items = items
  end

  def push(element)
    @items.push(element)
  end

  def pop
    @items.pop
  end

  def peek
    last_element_index = @items.length - 1
    @items[last_element_index]
  end

  def isEmpty?
    @items.empty?
  end

  def clear
    @items = []
  end

  def print
    @items.join(', ')
  end
end
