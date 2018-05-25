class Stack
  # methods: push, pop, peek, isEmpty, clear, size
  attr_accessor :items

  def initialize(items = [])
    @items = items
  end

  def push(element)
    @items.push(element)
  end
end
