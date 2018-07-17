module Containers
  module LinkedList
    class CircularSinglyLinkedList
      attr_accessor :head

      def append(element)
        current_node = @head

        while current_node.next? && current_node.next_pointer != @head
          current_node = current_node.next_pointer
        end

        new_node = Node.new(element, nil)
        new_node.next_pointer = @head
        current_node.next_pointer = new_node
      end

      def empty?
        @head.data.nil?
      end

      def initialize(data = nil)
        @head = Node.new(data, nil)
      end

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

        new_node = Node.new(element, next_node)
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
      end

      def remove_at(position)
        current_node = @head
        index = 1
        previous_node = current_node
        next_node = current_node

        while current_node
          if position == index
            next_node = current_node.next_pointer
            current_node.next_pointer = nil
            previous_node.next_pointer = next_node
          end

          index += 1
          previous_node = current_node
          current_node = current_node.next_pointer
        end
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

      def to_s
        current_node = @head
        elements = []

        if !current_node.nil?
          elements.push(current_node.data)
        end

        while current_node.next? && current_node.next_pointer != @head
          current_node = current_node.next_pointer
          elements.push(current_node.data)
        end

        elements.join(", ")
      end
    end
  end
end
