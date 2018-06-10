require_relative "../../src/LinkedList/singly_linked_list"
require_relative "../../src/LinkedList/node"

describe LinkedList::SinglyLinkedList do
  before do
    @linked_list = LinkedList::SinglyLinkedList.new('A')
  end

  describe 'initialize' do
    context 'when data is provided' do
      it 'creates a new list with provided data' do
        expect(@linked_list.empty?).to be_falsy
      end

    end
  end

  describe 'append' do
    it 'adds a new element to the end of the list' do
      new_node = @linked_list.append('B')
      expect()
    end
  end

  describe 'insert' do
    it 'inserts a new element at specified position' do

    end

  end

  describe 'remove' do
    it 'removes an item from the list' do

    end
  end

  describe 'indexOf' do
    it 'returns the index of an element in the list' do
        @linked_list.append('B')
        @linked_list.append('C')
        @linked_list.append('D')

        expect(@linked_list.indexOf('C')).to eql(2)
    end
  end

  describe 'removeAt' do
    it 'removes an item from a specified position in the list' do

    end
  end

  describe 'empty?' do
    it 'returns true if the list does not contain any element' do
      linked_list = LinkedList::SinglyLinkedList.new
      expect(linked_list.empty?).to be_truthy
    end

    it 'returns false if the list contains elements' do
      expect(@linked_list.empty?).to be_falsey
    end
  end

  describe 'size' do
    it 'returns the number of elements in the list' do
      @linked_list.append('B')
      @linked_list.append('C')
      @linked_list.append('D')

      expect(@linked_list.size).to eql(4)
    end
  end

  describe 'toString' do
    it 'returns only the element values' do
      @linked_list.append('B')
      @linked_list.append('C')
      @linked_list.append('D')

      expect(@linked_list.toString).to eql("A, B, C, D")
    end
  end
end
