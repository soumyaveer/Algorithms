module LinkedList
  class Node
    attr_accessor :data

    def initialize(data, pointer = nil)
      @data = data
      @pointer = pointer
    end

    def next?
      !@pointer.nil?
    end

    def pointer=(node)
      @pointer = node
    end

    def pointer
      @pointer
    end
  end
end
