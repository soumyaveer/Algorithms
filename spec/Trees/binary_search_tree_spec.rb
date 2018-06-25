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
        @tree.insert(7)
        @tree.insert(15)
        @tree.insert(5)
        @tree.insert(3)
        @tree.insert(9)

        expect(@tree.height).to eql(3)
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
      expect(@tree.in_order_traversal(@tree.root)).to eql("3 5 7 8 9 10 11 12 13 14 15 18 20 25")
    end
  end

  describe 'pre_order_traversal' do
    it 'visits all nodes of the tree using pre-order traversal' do
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
      expect(@tree.pre_order_traversal(@tree.root)).to eql("11 7 5 3 9 8 10 15 13 12 14 20 18 25")
    end
  end

  describe 'post_order_traversal' do
    it 'visits all nodes of the tree using post-order traversal' do
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
      expect(@tree.post_order_traversal(@tree.root)).to eql("3 5 8 10 9 7 12 14 13 18 25 20 15 11")
    end
  end

  describe 'min' do
    it 'returns minimum value/key in the tree' do
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
      expect(@tree.min).to eql(3)
    end
  end

  describe 'max' do
    it 'returns maximum value/Key in the tree' do
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
      expect(@tree.max).to eql(25)
    end
  end

  describe 'remove' do
    it 'removes the key from the tree' do

    end
  end
end
