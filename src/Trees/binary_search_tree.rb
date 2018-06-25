module Trees
  class BinarySearchTree
    attr_accessor :root

    def initialize(key)
      @root = Trees::Node.new(key)
    end

    def empty?
      @root.key.nil?
    end

    def height
      current_node = @root
      left_level = 0
      right_level = 0

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

    def min
      current_node = @root

      return nil if current_node.nil?

      while current_node&.left?
        current_node = current_node.left
      end

      current_node.key
    end

    def max
      current_node = @root

      return nil if current_node.nil?

      while current_node&.right?
        current_node = current_node.right
      end

      current_node.key
    end

    def to_s(keys)
      keys.flatten.join(" ")
    end
  end
end
