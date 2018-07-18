require_relative "../../../src/containers/trees/node"
require_relative '../../../src/containers/trees/avl_tree'

module Containers
  module Trees
    describe AVLTree do
      before do
        @avl_tree = AVLTree.new(50)
      end

      describe 'initialize' do
        it 'creates a new avl tree' do
          expect(@avl_tree.height).to eql(0)
        end
      end

      describe 'height' do
        it 'returns the height of the AVL tree' do
          @avl_tree.insert(30)
          @avl_tree.insert(70)
          @avl_tree.insert(60)
          @avl_tree.insert(80)
          @avl_tree.insert(90)

          p @avl_tree
          expect(@avl_tree.height).to eql(2)
        end
      end

      describe 'insert' do
        it 'inserts a new node in the AVL tree' do
          @avl_tree.insert(30)

          expect(@avl_tree.height).to eql(1)
        end

        context 'single rotation' do
          it 'performs right rotation to balance the tree while inserting the node' do
            @avl_tree.insert(30)
            @avl_tree.insert(70)
            @avl_tree.insert(60)
            @avl_tree.insert(80)
            @avl_tree.insert(90)

            expect(@avl_tree.height).to eql(2)
            expect(@avl_tree.pre_order_traversal(@avl_tree.root)).to eql("70 50 30 60 80 90")
          end

          it 'performs left rotation to balance the tree while inserting the node' do
            @avl_tree.insert(30)
            @avl_tree.insert(70)
            @avl_tree.insert(10)
            @avl_tree.insert(40)
            @avl_tree.insert(5)

            expect(@avl_tree.height).to eql(2)
            p @avl_tree

            expect(@avl_tree.pre_order_traversal(@avl_tree.root)).to eql("30 10 5 50 40 70")
          end
        end

        context 'double rotation' do
          it 'performs left-right rotation to balance the tree while inserting the node' do
            @avl_tree.insert(30)
            @avl_tree.insert(70)
            @avl_tree.insert(10)
            @avl_tree.insert(40)
            @avl_tree.insert(35)

            expect(@avl_tree.height).to eql(2)
            expect(@avl_tree.pre_order_traversal(@avl_tree.root)).to eql("40 30 10 35 50 70")
          end

          it 'performs right-left rotation to balance the tree while inserting the node' do
            avl_tree = AVLTree.new(70)
            avl_tree.insert(50)
            avl_tree.insert(80)
            avl_tree.insert(72)
            avl_tree.insert(90)
            avl_tree.insert(75)

            expect(avl_tree.height).to eql(2)
            expect(avl_tree.pre_order_traversal(avl_tree.root)).to eql("72 70 50 80 75 90")
          end
        end
      end
    end
  end
end
