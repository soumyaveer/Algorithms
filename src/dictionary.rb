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

  def delete(key)
    @items.delete_if {|item_key| item_key == key }
  end

  def get(key)
    @items.has_key?(key) ? @items[key] : nil
  end
end
