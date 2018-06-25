require_relative "../../src/Trees/node"

describe Trees::Node do
  before do
    @node = Trees::Node.new(11)
  end

  describe 'initialize' do
    it 'creates a new node with the specified data' do
      expect(@node.empty?).to be_falsey
    end
  end

  describe 'setter' do
    context 'left=' do
      it 'assigns the node to the left of the old node' do
        left_node = Trees::Node.new(7)
        @node.left = left_node
        expect(@node.left).to eql(left_node)
        end
      end

    context 'right=' do
      it 'assigns the node to the right of the old node' do
        right_node = Trees::Node.new(27)
        @node.right = right_node
        expect(@node.right).to eql(right_node)
      end
    end
  end



  describe 'getter' do
    context 'left' do
      it 'returns the left node' do
        left_node = Trees::Node.new(7)
        @node.left = left_node
        expect(@node.left).to eql(left_node)
      end
    end

    context 'right' do
      it 'returns the right node' do
        right_node = Trees::Node.new(27)
        @node.right = right_node
        expect(@node.right).to eql(right_node)
      end
    end
  end
end
