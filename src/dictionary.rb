class Dictionary
  attr_accessor :items

  def initialize(items = {})
    @items = items
  end

  def empty?
    @items.empty?
  end

  def size
    @items.size
  end
end
