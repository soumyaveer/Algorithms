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

  def set(key, value)
    @items[key] = value
  end

  def has?(key)
    @items.has_key?(key)
  end
end
