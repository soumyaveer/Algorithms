module LinkedList
  class CircularDoublyLinkedList
    attr_accessor :head

    def initialize(data = nil)
      @head = LinkedList::Node.new(data, nil, nil)
    end

    def empty?
      @head.data.nil?
    end

    
  end
end
