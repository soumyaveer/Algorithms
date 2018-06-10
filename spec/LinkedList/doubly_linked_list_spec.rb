require_relative "../../../src/LinkedList/node"
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

    end
  end

  describe 'remove_at' do
    it 'removes an item from a specified position in the list' do
      
    end
  end
end
