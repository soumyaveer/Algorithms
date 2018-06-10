module LinkedList
  class DoublyLinkedList
    attr_accessor :head

    def initialize(data = nil)
      @head = LinkedList::Node.new(data, nil, nil )
    end

    def append(element)
      current_node = @head
      previous_node = nil

      while current_node.next?
        previous_node = current_node.previous_pointer
        current_node = current_node.next_pointer
      end

      new_node = LinkedList::Node.new(element, nil)
      current_node.next_pointer = new_node
      current_node.previous_pointer = previous_node
    end

    def empty?
      @head.data.nil?
    end

    def size
      current_node = @head
      index = 1

      while current_node.next?
        index += 1
        current_node = current_node.next_pointer
      end

      index
    end

    def to_s
      current_node = @head
      elements = []

      while current_node
        elements.push(current_node.data)
        current_node = current_node.next_pointer
      end

      elements.join(", ")
    end

    def insert(position, element)
      current_node = @head
      index = 0

      previous_node = current_node
      next_node = current_node
      new_node = LinkedList::Node.new(element, nil)

      while current_node
        if index == position - 1
          previous_node = current_node
          next_node = current_node.next_pointer
        end
        index += 1
        current_node = current_node.next_pointer
      end

      new_node.next_pointer  = next_node
      new_node.previous_pointer = previous_node
      previous_node.next_pointer = new_node
    end

    def remove(element)
      current_node = @head
      previous_node = nil
      next_node = nil

      while current_node
        if current_node.data == element
          next_node = current_node.next_pointer
          current_node.next_pointer = nil
          previous_node.next_pointer = next_node
        end
        previous_node = current_node
        current_node = current_node.next_pointer
      end

      previous_node.next_pointer = next_node
      next_node.previous_pointer = previous_node
    end

    def remove_at(position)
      current_node = @head
      index = 1
      previous_node = nil
      next_node = nil

      while current_node

        if position == index
          next_node = current_node.next_pointer
          current_node.next_pointer = nil
          previous_node.next_pointer = next_node
          next_node.previous_pointer = previous_node
        end
        index += 1
        previous_node = current_node
        current_node = current_node.next_pointer
      end
    end
  end
end
