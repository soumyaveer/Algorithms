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
      @linked_list.append('B')

      expect(@linked_list.size).to eql(2)
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

  describe 'index_of' do
    it 'returns the index of an element in the list' do
        @linked_list.append('B')
        @linked_list.append('C')
        @linked_list.append('D')

        expect(@linked_list.index_of('C')).to eql(2)
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

  describe 'to_s' do
    it 'returns only the element values' do
      @linked_list.append('B')
      @linked_list.append('C')
      @linked_list.append('D')

      expect(@linked_list.to_s).to eql("A, B, C, D")
    end
  end
end
