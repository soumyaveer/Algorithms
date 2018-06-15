class Dictionary
  attr_accessor :items

  def clear
    @items = {}
  end

  def delete(key)
    @items.delete_if {|item_key| item_key == key }
  end

  def empty?
    @items.empty?
  end

  def get(key)
    @items.has_key?(key) ? @items[key] : nil
  end

  def has?(key)
    @items.has_key?(key)
  end

  def initialize(items = {})
    @items = items
  end

  def keys
    item_keys = []
    @items.each_key {|key| item_keys.push(key)}
    item_keys
  end

  def size
    @items.size
  end

  def set(key, value)
    @items[key] = value
  end

  def values
    item_values = []
    @items.each_value {|value| item_values.push(value)}
    item_values
  end

end
