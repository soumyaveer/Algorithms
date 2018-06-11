module LinkedList
  class CircularDoublyLinkedList
    attr_accessor :head

    def initialize(data = nil)
      @head = LinkedList::Node.new(data, nil, nil)
    end

    def empty?
      @head.data.nil?
    end

    def size
      current_node = @head
      index = 1

      while current_node.next? && current_node.next_pointer != @head

        index += 1
        current_node = current_node.next_pointer
      end

      index
    end
  end
end
