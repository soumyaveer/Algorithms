class Set
  attr_accessor :items

  def initialize(items = {})
    @items = items
  end

  def size
    @items.size
  end

  def has?(value)
    @items.has_value?(value)
  end

  def add(value)
    if !@items.has_value?(value)
      @items[value] = value
      return true
    end
     false
  end

  def clear
    @items = {}
  end

  def delete(delete_value)
    @items.delete_if {|key| key == delete_value}
  end

  def values
    @items.values
  end

  def union(other_set)
    union_set = Set.new

    @items.each_value do |value|
      union_set.add(value)
    end

    other_set.items.each_value do |value|
      union_set.add(value)
    end

    union_set.items
  end
end
