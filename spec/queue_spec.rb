require_relative "../src/queue"

describe Queue do
  before do
    @queue = Queue.new
  end

  describe 'initialize' do
    context 'when no data is provided' do
      it 'creates a new empty queue' do
        expect(@queue.size).to eql(0)
        expect(@queue.empty?).to be_truthy
      end
    end

    context 'when data is provided' do
      it 'creates a new queue with elements in it' do
        queue = Queue.new([1, 2, 3, 4])
        expect(queue.size).to eql(4)
        expect(queue.empty?).to be_falsey
      end
    end
  end

  describe 'enqueue' do
    it 'adds a new item at the back of the queue' do
      @queue.enqueue(1)

      expect(@queue.empty?).to be_falsey
      expect(@queue.size).to eql(1)
      expect(@queue.front).to eql(1)
    end

    it 'adds more new items at the back of the queue' do
      @queue.enqueue(1)
      @queue.enqueue(2)
      @queue.enqueue(3)

      expect(@queue.empty?).to be_falsey
      expect(@queue.size).to eql(3)
      expect(@queue.front).to eql(1)
    end
  end

  describe 'dequeue' do
    it 'removes the first item from the queue' do
      @queue.enqueue(1)
      @queue.enqueue(2)
      @queue.enqueue(3)

      removed_element = @queue.dequeue

      expect(removed_element).to eql(1)
      expect(@queue.empty?).to be_falsey
      expect(@queue.size).to eql(2)
      expect(@queue.front).to eql(2)
    end
  end

  describe 'front' do
    it 'returns the first element from the queue' do
      @queue.enqueue(1)
      @queue.enqueue(2)
      @queue.enqueue(3)

      expect(@queue.front).to eql(1)
    end
  end

  describe 'empty?' do
    it 'returns true is queue does not have elements in it' do
      expect(@queue.empty?).to be_truthy
      expect(@queue.size).to eql(0)
    end

    it 'returns false is queue has elements in it' do
      @queue.enqueue(1)
      @queue.enqueue(2)
      @queue.enqueue(3)

      expect(@queue.size).to eql(3)
      expect(@queue.empty?).to be_falsey
    end
  end

  describe 'size' do
    it 'returns the number of elements the queue contains' do
      expect(@queue.size).to eql(0)

      @queue.enqueue(1)
      @queue.enqueue(2)
      @queue.enqueue(3)

      expect(@queue.size).to eql(3)
    end
  end
end
