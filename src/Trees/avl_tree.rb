module Trees
  class AVLTree
    attr_accessor :root
    def initialize(key)
      @root = Trees::Node.new(key)
    end
  end
end
