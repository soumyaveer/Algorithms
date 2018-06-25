require_relative '../../src/Trees/node'
require_relative '../../src/Trees/binary_search_tree'

describe Trees::BinarySearchTree do
  before do
    @tree = Trees::BinarySearchTree.new(11)
  end

  describe 'initialize' do
    it 'creates a new tree with root node' do
      expect(@tree.empty?).to be_falsey
      expect(@tree.height).to eql(0)
    end
  end

  describe 'height' do
    context 'when root is the only node' do
      it 'return the height of the tree' do
        expect(@tree.height).to eql(0)
      end
    end

    context 'when tree has more than one node' do
      it 'returns the height of the tree' do

      end
    end
  end

  describe 'insert' do
    it 'inserts a new key in the tree' do
      @tree.insert(7)
      @tree.insert(15)
      @tree.insert(5)
      @tree.insert(3)
      @tree.insert(9)
      @tree.insert(8)
      @tree.insert(10)
      @tree.insert(13)
      @tree.insert(12)
      @tree.insert(14)
      @tree.insert(20)
      @tree.insert(18)
      @tree.insert(25)

      expect(@tree.height).to eql(3)
    end
  end

  describe 'search' do
    it 'returns true if the key is found in the tree' do

    end

    it 'returns false if the key is not found in the tree' do

    end
  end

  describe 'in_order_traversal' do
    it 'visits all nodes of the tree using in-order traversal' do

    end
  end

  describe 'pre_order_traversal' do
    it 'visits all nodes of the tree using pre-order traversal' do

    end
  end

  describe 'post_order_traversal' do
    it 'visits all nodes of the tree using post-order traversal' do

    end
  end

  describe 'min' do
    it 'returns minimum value/key in the tree' do

    end
  end

  describe 'max' do
    it 'returns maximum value/Key in the tree' do

    end
  end

  describe 'remove' do
    it 'removes the key from the tree' do

    end
  end
end
