module Trees
  class Node
    attr_accessor :key

    def initialize(key, right = nil, left = nil)
      @key = key
      @right = right
      @left = left
    end

    def right=(right_node)
      @right = right_node
    end

    def right
      @right
    end

    def left=(left_node)
      @left = left_node
    end

    def left
      @left
    end

    def empty?
      @key.nil?
    end
  end
end
