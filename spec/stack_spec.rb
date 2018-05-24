require_relative "../src/stack"

describe Stack do
  describe 'initialize' do
    it 'creates an empty stack' do
      stack = Stack.new()
      expect(stack.items).to match([])
    end
  end
end
