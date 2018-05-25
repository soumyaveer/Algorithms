require_relative "../src/stack"

describe Stack do
  before do
    @stack = Stack.new
  end

  describe 'initialize' do
    it 'creates an empty stack' do
      expect(@stack.size).to eql(0)
      expect(@stack.is_empty?).to be_truthy
    end
  end

  describe 'push' do
    it 'adds a new item to the top of the stack' do
      expect(@stack.push(1)).to match_array([1])
      expect(@stack.size).to eql(1)
      expect(@stack.peek).to eql(1)
    end

    it 'adds second new item to the top of the stack' do
      @stack.push(1)
      updated_stack = @stack.push(2)

      expect(updated_stack).to match_array([1, 2])
      expect(@stack.size).to eql(2)
      expect(@stack.peek).to eql(2)
    end

    it 'adds third new item to the top of the stack' do
      @stack.push(1)
      @stack.push(2)
      updated_stack = @stack.push(3)

      expect(updated_stack).to match_array([1, 2, 3])
      expect(@stack.size).to eql(3)
      expect(@stack.peek).to eql(3)

    end
  end

  describe 'pop' do
    it 'removes the top item from the stack' do
      @stack.push(1)
      @stack.push(2)
      @stack.push(3)

      expect(@stack.pop).to eql(3)
      expect(@stack.size).to eql(2)
      expect(@stack.print).to eql('1, 2')
    end

    it 'removes another item from the top of the stack' do
      @stack.push(1)
      @stack.push(2)
      @stack.push(3)

      2.times do
        @stack.pop
      end

      expect(@stack.size).to eql(1)
      expect(@stack.peek).to eql(1)
    end
  end

  describe 'peek' do
    it 'returns the top element of the stack' do
      @stack.push(1)
      @stack.push(2)
      @stack.push(3)

      top_element = @stack.peek

      expect(top_element).to eql(3)
    end
  end

  describe 'is_empty?' do
    it 'returns false is the stack is not empty' do
      @stack.push(3)

      expect(@stack.is_empty?).to be_falsey
    end

    it 'returns true if the stack is empty' do
      @stack.push(3)

      @stack.pop

      expect(@stack.is_empty?).to be_truthy
    end
  end


  describe 'clear' do
    it 'clears the elements of the stack' do
      @stack.push(4)
      @stack.push(5)
      @stack.push(6)

      expect(@stack.is_empty?).to be_falsey
      expect(@stack.clear).to match_array([])
      expect(@stack.is_empty?).to be_truthy
    end
  end

  describe 'size' do
    it 'returns length of the stack' do
      @stack.push(4)
      @stack.push(5)
      @stack.push(6)

      expect(@stack.size).to eql(3)
    end
  end

  describe 'print' do
    it 'displays the elements of the stack' do
      @stack.push(7)
      @stack.push(8)
      @stack.push(9)
      @stack.push(10)

      expect(@stack.print).to eql('7, 8, 9, 10')
    end
  end
end
