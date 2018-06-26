module Trees
  class AVLTree
    attr_accessor :root

    def initialize(key)
      @root = Trees::Node.new(key)
    end

    def height
      current_node = @root
      left_level = 1
      right_level = 1

      while current_node.left?
        left_level += 1
        current_node = current_node.left
      end

      while current_node.right?
        right_level += 1
        current_node = current_node.right
      end

      left_level > right_level ? left_level : right_level
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

    def to_s(keys)
      keys.flatten.join(" ")
    end
  end
end
