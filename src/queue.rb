class Queue

  attr_accessor :items

  def initialize(items = [])
    @items = items
  end

  def size
    @items.length
  end

  def empty?
    @items.empty?
  end
end
