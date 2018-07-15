module Containers
  class Hash
    attr_accessor :items

    def empty?
      self.size == 0
    end

    def get(key)
      position = self.position_of(key)
      @table_items[position]
    end

    def initialize(table_items = [])
      @table_items = table_items
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

    def put(key, value)
      position = self.position_of(key)
      @table_items[position] = value
    end

    def remove(key)
      position = self.position_of(key)
      @table_items[position] = nil
    end

    def size
      length = 0
      @table_items.each do |element|
        element.nil? ? length : length += 1
      end
      length
    end
  end
end
