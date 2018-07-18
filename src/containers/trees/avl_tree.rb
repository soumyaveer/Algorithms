# self balancing trees
module Containers
  module Trees
    class AVLTree
      attr_accessor :root

      def initialize(key)
        @root = Node.new(key)
      end

      # height of avl tree start with 1. an avl tree with only root has height 1
      def height
        max_height(@root)
      end

      def max_height(node)
        node ? 1 + [max_height(node.left), max_height(node.right)].max : -1
      end

      def pre_order_traversal(node)
        values = []
        unless node
          return []
        else
          values.push(node.key)
          values.push(pre_order_traversal(node.left))
          values.push(pre_order_traversal(node.right))
        end

        to_s(values)
      end

      def to_s(keys)
        keys.flatten.join(' ')
      end

      def insert_node(node, element)
        if node.nil?
          node = Trees::Node.new(element)
        elsif element < node.key
          node.left = insert_node(node.left, element)

          if height_difference_greater_than_1?(node.left, node.right)
            if element < node.left.key
              node = rotation_ll(node)
            else
              node = rotation_lr(node)
            end
          end

        elsif element > node.key
          node.right = insert_node(node.right, element)

          if height_difference_greater_than_1?(node.right, node.left)

            if element > node.right.key
              node = rotation_rr(node)
            else
              node = rotation_rl(node)
            end
          end
        end
        node
      end

      def insert(element)
        @root = insert_node(@root, element)
      end

      private

      def height_difference_greater_than_1?(left_subtree, right_subtree)
        (max_height(left_subtree) - max_height(right_subtree)).abs > 1
      end

      def rotation_ll(node)
        current_node = node.left
        node.left = current_node.right
        current_node.right = node
        current_node
      end

      def rotation_lr(node)
        node.left = rotation_rr(node.left)
        rotation_ll(node)
      end

      def rotation_rr(node)
        current_node = node.right
        node.right = current_node.left
        current_node.left = node
        current_node
      end

      def rotation_rl(node)
        node.right = rotation_ll(node.right)
        rotation_rr(node)
      end
    end
  end
end
