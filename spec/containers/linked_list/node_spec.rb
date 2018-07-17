module Containers
  module LinkedList
    describe Node do
      before do
        @node = Node.new('A', 2, 0)
      end

      describe 'initialize' do
        it 'creates a node with data and position' do
          expect(@node.data).to eql('A')
          expect(@node.next_pointer).to eql(2)
        end
      end

      describe 'next_pointer' do
        it 'returns the pointer to the next node' do
          node_1 = Node.new('B', 3)
          Node.new('C', 4)

          expect(node_1.next_pointer).to eql(3)
        end
      end

      describe 'next_pointer=' do
        it 'sets the pointer of the node' do
          node_1 = Node.new('B', 3)
          node_2 = Node.new('C', 4)

          node_1.next_pointer = node_2
          expect(node_1.next_pointer).to eql(node_2)

        end
      end

      describe 'previous_pointer' do
        it 'returns the pointer to the previous node' do
          expect(@node.data).to eql('A')
          expect(@node.previous_pointer).to eql(0)
        end
      end

      describe 'previous_pointer=' do
        it 'sets the pointer to the previous node' do
          node_1 = Node.new('B', 3)
          node_2 = Node.new('C', 4)

          node_2.previous_pointer = node_1
          expect(node_2.previous_pointer).to eql(node_1)
        end
      end

      describe 'next?' do
        it 'returns true if next node is present' do
          node_1 = Node.new('B', 3)
          Node.new('C', 4)

          expect(node_1.next?).to be_truthy
        end

        it 'returns false if next node is not present' do
          node_2 = Node.new('C', nil)

          expect(node_2.next?).to be_falsy
        end
      end
    end
  end
end
