require_relative "../../../src/containers/trees/node"

module Containers
  module Trees
    describe Node do
      before do
        @node = Node.new(11)
      end

      describe 'initialize' do
        it 'creates a new node with the specified data' do
          expect(@node.empty?).to be_falsey
        end
      end

      describe 'setter' do
        context 'left=' do
          it 'assigns the node to the left of the old node' do
            left_node = Node.new(7)
            @node.left = left_node
            expect(@node.left).to eql(left_node)
          end
        end

        context 'right=' do
          it 'assigns the node to the right of the old node' do
            right_node = Node.new(27)
            @node.right = right_node
            expect(@node.right).to eql(right_node)
          end
        end
      end

      describe 'getter' do
        context 'left' do
          it 'returns the left node' do
            left_node = Node.new(7)
            @node.left = left_node
            expect(@node.left).to eql(left_node)
          end
        end

        context 'right' do
          it 'returns the right node' do
            right_node = Node.new(27)
            @node.right = right_node
            expect(@node.right).to eql(right_node)
          end
        end
      end

      describe 'left?' do
        it 'returns true if the left node is present' do
          left_node = Node.new(7)
          @node.left = left_node

          expect(@node.left).to eql(left_node)
          expect(@node.left?).to be_truthy
        end

        it 'returns false if the left node is not present' do
          expect(@node.left?).to be_falsey
        end
      end

      describe 'right?' do
        it 'returns true if the right node is present' do
          right_node = Node.new(27)
          @node.right = right_node
          expect(@node.right).to eql(right_node)

          expect(@node.right?).to be_truthy
        end

        it 'returns false if the right node is not present' do
          expect(@node.right?).to be_falsey
        end
      end
    end
  end
end
