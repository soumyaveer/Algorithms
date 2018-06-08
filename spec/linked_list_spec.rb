require_relative "../src/linked_list"

describe LinkedList do
  before do
    @linked_list = LinkedList.new
  end

  describe 'initialize' do
    context 'when no data is provided' do
      it 'creates a new empty list' do
        expect(@linked_list.size).to eql(0)
        expect(@linked_list.empty?).to be_truthy
      end
    end

    context 'when data is provided' do
      it 'creates a new list with provided data' do
      end

    end
  end

  describe 'append' do
    it 'adds a new element to the end of the list' do

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

    end
  end

  describe 'removeAt' do
    it 'removes an item from a specified position in the list' do

    end
  end

  describe 'empty?' do
    it 'returns true if the list does not contain any element' do

    end

    it 'returns false if the list contains elements' do

    end
  end

  describe 'size' do
    it 'returns the number of elements in the list' do

    end
  end

  describe 'toString' do
    it 'returns only the element values' do

    end
  end
end
