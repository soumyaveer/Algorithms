require_relative "../../src/LinkedList/node"
require_relative "../../src/LinkedList/circular_doubly_linked_list"

describe LinkedList::CircularDoublyLinkedList do
  before do
    @linked_list = LinkedList::CircularDoublyLinkedList.new('A')
  end

  describe 'initialize' do
    it 'creates a new linked list with one node' do
      expect(@linked_list.empty?).to be_falsy
      expect(@linked_list.size).to eql(1)
    end
  end

  describe 'empty?' do
    it 'returns true when the list does not contain elements' do
      linked_list = LinkedList::CircularDoublyLinkedList.new

      expect(linked_list.empty?).to be_truthy
    end

    it 'returns false when the list contains elements' do
      expect(@linked_list.empty?).to be_falsy
    end
  end

  describe 'size' do
    it 'returns the size of the list' do
      @linked_list.append('B')

      expect(@linked_list.size).to eql(2)
    end
  end

  describe 'to_s' do
    it 'returns the elements in the list' do
      @linked_list.append('B')
      @linked_list.append('C')

      expect(@linked_list.size).to eql(3)
      expect(@linked_list.to_s).to eql("A, B, C")
    end
  end

  describe 'append' do
    it 'adds elements to the list' do
      @linked_list.append('B')
      @linked_list.append('C')

      expect(@linked_list.size).to eql(3)
      expect(@linked_list.to_s).to eql("A, B, C")
    end
  end

  describe 'insert' do
    it 'inserts elements in the list' do
      @linked_list.append('B')
      @linked_list.append('C')
      @linked_list.append('E')

      expect(@linked_list.size).to eql(4)

      @linked_list.insert('D', 3)

      expect(@linked_list.size).to eql(5)
      expect(@linked_list.to_s).to eql("A, B, C, D, E")
    end
  end

  describe 'remove' do
    it 'removes an element from the list' do
      @linked_list.append('B')
      @linked_list.append('C')
      @linked_list.append('D')

      expect(@linked_list.size).to eql(4)

      @linked_list.remove('C')

      expect(@linked_list.size).to eql(3)
      expect(@linked_list.to_s).to eql("A, B, D")
    end
  end

  describe 'remove_at' do
    it 'removes an element from a given position in the list' do
      @linked_list.append('B')
      @linked_list.append('C')
      @linked_list.append('D')

      expect(@linked_list.size).to eql(4)

      @linked_list.remove_at(3)
      expect(@linked_list.to_s).to eql("A, B, D")
    end
  end
end
