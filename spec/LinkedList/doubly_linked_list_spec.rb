require_relative "../../src/LinkedList/node"
require_relative "../../src/LinkedList/doubly_linked_list"

describe LinkedList::DoublyLinkedList do
  before do
    @linked_list = LinkedList::DoublyLinkedList.new('A')
  end

  describe 'initialize' do
    context 'when data is provided' do
      it 'creates a new list with provided data' do
        expect(@linked_list.empty?).to be_falsy
      end
    end
  end

  describe 'insert' do
    it 'inserts a new element at specified position' do
      @linked_list.append('B')
      @linked_list.append('C')
      @linked_list.append('E')

      expect(@linked_list.size).to eql(4)

      @linked_list.insert(3, 'D')

      expect(@linked_list.size).to eql(5)
      expect(@linked_list.to_s).to eql("A, B, C, D, E")
    end
  end

  describe 'remove_at' do
    it 'removes an item from a specified position in the list' do
      @linked_list.append('B')
      @linked_list.append('C')
      @linked_list.append('D')

      @linked_list.remove_at(3)
      expect(@linked_list.size).to eql(3)
      expect(@linked_list.to_s).to eql("A, B, D")
    end
  end

  describe 'remove' do
    it 'removes an item from the list' do
      @linked_list.append('B')
      @linked_list.append('C')
      @linked_list.append('D')

      expect(@linked_list.size).to eql(4)

      @linked_list.remove('C')

      expect(@linked_list.size).to eql(3)
      expect(@linked_list.to_s).to eql("A, B, D")
    end
  end
end
