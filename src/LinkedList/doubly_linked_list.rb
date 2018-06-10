module LinkedList
  class DoublyLinkedList
    attr_accessor :head

    def initialize(element = nil)
      @head = LinkedList::Node.new(element, nil, nil )
    end


  end
end
