require_relative "../../src/LinkedList/node"
require_relative "../../src/LinkedList/circular_singly_linked_list"

describe LinkedList::CircularSinglyLinkedList do
  before do
    @linked_list = LinkedList::CircularSinglyLinkedList.new('A')
  end

  describe 'initialize' do
    it 'creates a new linked list with one node' do
      expect(@linked_list.empty?).to be_falsey
      expect(@linked_list.size).to eql(1)
    end
  end

  describe 'size' do
    it 'returns number of elements in the linked list' do
      expect(@linked_list.size).to eql(1)
    end
  end

  describe 'empty?' do
    it 'returns true when linked list does not have elements' do
      expect(@linked_list.empty?).to be_falsy
    end

    it 'returns false when linked list has elements' do
      linked_list = LinkedList::CircularSinglyLinkedList.new
      expect(linked_list.empty?).to be_truthy
    end
  end

  describe 'insert' do
    it 'inserts an element in the linked list at the given position' do

    end
  end

end
