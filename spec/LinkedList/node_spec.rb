require_relative "../../src/LinkedList/node"

describe LinkedList::Node do
  before do
    @node = LinkedList::Node.new('A', 2)
  end

  describe 'initialize' do
    it 'creates a node with data and position' do
      expect(@node.data).to eql('A')
      expect(@node.pointer).to eql(2)
    end
  end

  describe 'get_pointer' do
    it 'returns the pointer to the next node' do
      node_1 = LinkedList::Node.new('B', 3)
      node_2 = LinkedList::Node.new('C', 4)
      expect(node_1.get_pointer).to eql(3)
    end
  end

  describe 'set_pointer' do
    it 'sets the pointer of the node' do
      node_1 = LinkedList::Node.new('B', 3)
      node_2 = LinkedList::Node.new('C', 4)

      node_1.set_pointer(node_2)
      expect(node_1.pointer).to eql(node_2)

    end
  end

  describe 'next?' do
    it 'returns true if next node is present' do
      node_1 = LinkedList::Node.new('B', 3)
      node_2 = LinkedList::Node.new('C', 4)

      expect(node_1.next?).to be_truthy
    end

    it 'returns false if next node is not present' do
      node_2 = LinkedList::Node.new('C', nil)

      expect(node_2.next?).to be_falsy
    end
  end
end
