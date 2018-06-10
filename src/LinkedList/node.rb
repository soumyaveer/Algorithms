module LinkedList
  class Node
    attr_accessor :data

    def initialize(data, next_pointer = nil, previous_pointer = nil)
      @data = data
      @next_pointer = next_pointer
    end

    def next?
      !@next_pointer.nil?
    end

    def next_pointer=(node)
      @next_pointer = node
    end

    def next_pointer
      @next_pointer
    end

  end
end
