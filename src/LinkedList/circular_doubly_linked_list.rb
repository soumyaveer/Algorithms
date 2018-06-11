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

    def append(element)
      current_node = @head
      previous_node = nil

      while current_node.next? && current_node.next_pointer != @head
        previous_node = current_node.previous_pointer
        current_node = current_node.next_pointer
      end

        new_node = LinkedList::Node.new(element, @head)
        current_node.next_pointer = new_node
        current_node.previous_pointer = previous_node
    end

    def to_s
      current_node = @head
      elements = []

      if !current_node.nil?
        elements << current_node.data
      end

      while current_node.next? && current_node.next_pointer != @head
        current_node = current_node.next_pointer
        elements.push(current_node.data)
      end

      elements.join(", ")
    end
  end
end
