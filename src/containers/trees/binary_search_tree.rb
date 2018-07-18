# binary search tree algorithm
module Containers
  module Trees
    class BinarySearchTree
      attr_accessor :root

      def empty?
        @root.key.nil?
      end

      def find_min_node(node)
        while node.nil? && node.left?
          node = node.left
        end
        node
      end

      def height
        # height in binary tree start with 0, i.e the binary tree with only root has height 0
        max_height(@root) - 1
      end

      def max_height(node)
        !node.nil? ? 1 + [max_height(node.left), max_height(node.right)].max : 0
      end

      def initialize(key)
        @root = Trees::Node.new(key)
      end


      def insert(key)
        new_node = Trees::Node.new(key)

        if @root == nil
          @root = new_node
        else
          insert_node(@root, new_node)
        end
      end

      def insert_node(node, new_node)
        if new_node.key < node.key
          node.left? ? insert_node(node.left, new_node) : node.left = new_node
        else
          node.right? ? insert_node(node.right, new_node) : node.right = new_node
        end
      end

      def in_order_traversal(node)
        values = []

        if node.nil?
          return []
        else
          values.push(in_order_traversal(node.left))
          values.push(node.key)
          values.push(in_order_traversal(node.right))
        end

        to_s(values)
      end

      def max
        current_node = @root

        return if current_node.nil?

        while current_node&.right?
          current_node = current_node.right
        end

        current_node.key
      end

      def min
        current_node = @root

        return nil if current_node.nil?

        while current_node&.left?
          current_node = current_node.left
        end

        current_node.key
      end

      def pre_order_traversal(node)
        values = []

        if node.nil?
          return []
        else
          values.push(node.key)
          values.push(pre_order_traversal(node.left))
          values.push(pre_order_traversal(node.right))
        end

        to_s(values)
      end

      def post_order_traversal(node)
        values = []
        if node.nil?
          return []
        else
          values.push(post_order_traversal(node.left))
          values.push(post_order_traversal(node.right))
          values.push(node.key)
        end

        to_s(values)
      end

      def remove(key)
        @root = remove_node(@root, key)
      end

      def remove_node(node, key)
        return nil if node.nil?

        if key < node.key
          node.left = remove_node(node.left, key)
          return node

        elsif key > node.key
          node.right = remove_node(node.right, key)
          return node

        else
          if !node.left? && !node.right?
            node = nil
            return node
          end

          unless node.left?
            node = node.right
            return node
          end

          unless node.right?
            node = node.left
            return node
          end

          min_node = find_min_node(node.right)
          node.key = min_node.key
          node.right = remove_node(node.right, min_node.key)
          node
        end
      end

      def search(key)
        search_node(@root, key)
      end

      def search_node(current_node, key)
        return false if current_node.nil?

        if key < current_node.key
          search_node(current_node.left, key)
        elsif key > current_node.key
          search_node(current_node.right, key)
        else
          true
        end
      end

      def to_s(keys)
        keys.flatten.join(' ')
      end
    end
  end
end
