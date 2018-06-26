require_relative "../../src/trees/node"
require_relative "../../src/trees/avl_tree"

describe Trees::AVLTree do
  before do
    @avl_tree = Trees::AVLTree.new(11)
  end

  describe 'initialize' do
    it 'creates a new avl tree' do
      expect(@avl_tree.height).to eql(1)
    end
  end
end
