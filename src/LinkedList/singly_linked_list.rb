module LinkedList
  class SinglyLinkedList
    attr_accessor :head

    def initialize(data)
      @head = LinkedList::Node.new(data, nil)
    end

    def append(element)
      current_node = @head

      while current_node.next?
        current_node = current_node.get_pointer
      end

      new_node = LinkedList::Node.new(element, nil)
      current_node.set_pointer(new_node)
    end

    # def insert(position, element)
    #
    # end
    #
    # def remove(element)
    #
    # end
    #
    def indexOf(element)
      current_node = @head
      index = 0

      while current_node.next?
        if element == current_node.data
          return index
        end
        index += 1
        current_node = current_node.get_pointer
      end

      -1
    end
    #
    # def removeAt(position)
    #
    # end
    #
    # def empty?
    #
    # end
    # 
    # def size
    #
    # end
    #
    # def toString
    #
    # end
  end
end
