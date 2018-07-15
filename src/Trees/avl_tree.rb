module Trees
  class AVLTree
    attr_accessor :root

    def initialize(key)
      @root = Trees::Node.new(key)
    end

    def height
      # height of avl tree start with 1. an avl tree with only root has height 1
      max_height(@root)
    end

    def max_height(node)
      !node.nil? ? 1 + [max_height(node.left), max_height(node.right)].max : 0
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

    def insert_node(node, element)
      if node.nil?
        node = Trees::Node.new(element)
      elsif element < node.key
        node.left = insert_node(node.left, element)

        if !node.left?
          if height_node(node.left) - height_node(node.right) > 1
            if element < node.left.key
              node = rotation_ll(node)
            else
              node = rotation_lr(node)
            end
          end
        end
      elsif element > node.key
        node.right = insert_node(node.right, element)

        if !node.right?
          if height_node(node.right) - height_node(node.left) > 1
            if element > node.right.key
              node = rotation_rr(node)
            else
              node = rotation_rl(node)
            end
          end
        end
      end

      node
    end

    def insert(element)
      node = @root
      insert_node(node, element)
    end

    def height_node(node)
      if node.nil?
        return -1
      else
        return max(height_node(node.left), height_node(node.right)) + 1
      end
    end

    def max(*values)
      values.max
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
      p "--"
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
