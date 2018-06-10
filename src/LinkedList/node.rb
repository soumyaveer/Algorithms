module LinkedList
  class Node
    attr_accessor :data

    def initialize(data, next_pointer = nil, previous_pointer = nil)
      @data = data
      @next_pointer = next_pointer
      @previous_pointer = previous_pointer
    end

    def next?
      !@next_pointer.nil?
    end

    def next_pointer=(next_node)
      @next_pointer = next_node
    end

    def next_pointer
      @next_pointer
    end

    def previous_pointer=(previous_node)
      @previous_pointer = previous_node
    end

    def previous_pointer
      @previous_pointer
    end
  end
end
