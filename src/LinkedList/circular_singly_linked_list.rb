module LinkedList
  class CircularSinglyLinkedList
    attr_accessor :head

    def initialize(data = nil)
      @head = LinkedList::Node.new(data, nil)
    end

    def empty?
      @head.data.nil?
    end
  end
end

