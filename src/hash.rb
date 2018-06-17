class Hash
  attr_accessor :items

  def initialize(items = [])
    @items = items
  end

  def size
    @items.size
  end

  def position_of(key)
    hash = 0
    i = 0

    while i < key.length
      hash += key[i].ord
      i += 1
    end

    hash % 37
  end
end
