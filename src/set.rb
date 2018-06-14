class Set
  attr_accessor :items

  def initialize(items = {})
    @items = items
  end

  def size
    @items.size
  end

  
end
