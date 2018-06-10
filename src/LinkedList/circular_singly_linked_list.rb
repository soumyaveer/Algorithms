module LinkedList
  class CircularSinglyLinkedList
    attr_accessor :head

    def initialize(data = nil)
      @head = LinkedList::Node.new(data, nil)
    end

    def empty?
      @head.data.nil?
    end

    def size
      current_node = @head
      index = 1
      repeated_node = 0
      nodes = []

      while current_node && repeated_node < 1
        nodes.push(current_node)

        if nodes.include?(current_node)
          repeated_node += 1
          index
        else
          repeated_node = 0
          index += 1
        end
        current_node.next_pointer
      end
      index
    end
  end
end

