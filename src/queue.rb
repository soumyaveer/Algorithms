class Queue
  # methods: emoty?, enqueue, dequeue, size, front
  attr_accessor :items

  # removes the first element from the queue
  def dequeue
    @items.shift
  end

  # verifies if the queue contains any elements
  def empty?
    @items.empty?
  end

  # adds a new item at the back of the queue
  def enqueue(element)
    @items.push(element)
    nil
  end

  # returns the first element from the queue
  def front
    @items[0]
  end

  # initialize a new queue
  def initialize(items = [])
    @items = items
  end

  # returns the number of elements in the queue
  def size
    @items.length
  end
end
