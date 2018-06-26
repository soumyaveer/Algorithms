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

  end
end
