module LinkedList
  class CircularSinglyLinkedList
    attr_accessor :head

    def append(element)
      current_node = @head
      p "Head node #{@head.inspect}"

      while current_node.next? && current_node.next_pointer != @head
        current_node = current_node.next_pointer
      end

      new_node = LinkedList::Node.new(element, nil)
      new_node.next_pointer = @head
      current_node.next_pointer = new_node
    end

    def initialize(data = nil)
      @head = LinkedList::Node.new(data, nil)
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
    #
    # def to_s
    #   current_node = @head
    #   elements = []
    #
    #   while current_node.next?
    #     elements.push(current_node.data)
    #     p elements
    #     current_node = current_node.next_pointer
    #   end
    #
    #   elements.join(", ")
    # end

    def insert(element, position)
      current_node = @head
      index = 0
      previous_node = nil
      next_node = nil

      while current_node.next_pointer
        if index == position - 1
          previous_node = current_node
          next_node = current_node.next_pointer
          break
        end
        index += 1
        current_node = current_node.next_pointer
      end

      new_node = LinkedList::Node.new(element, next_node)
      previous_node.next_pointer = new_node
    end
  end
end

