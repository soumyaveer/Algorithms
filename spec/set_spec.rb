require_relative "../src/set"

describe Set do
  before do
    @set = Set.new
  end

  describe 'initialize' do
    it 'creates a new empty set' do
      expect(@set.size).to eql(0)
    end
  end

  describe 'add' do
    it 'adds a new item to the set' do
      @set.add(1)
      @set.add(2)

      expect(@set.size).to eql(2)
      expect(@set.has(1)).to be_truthy
      expect(@set.has(2)).to be_truthy

      expect(@set.values).to match_array([2, 3])
    end
  end

  describe 'delete' do
    it 'removes the value from the set' do
      @set.add(1)
      @set.add(2)

      expect(@set.size).to eql(2)

      @set.delete(2)

      expect(@set.size).to eql(1)
      expect(@set.values).to match_array([1])
    end
  end

  describe 'has' do
    it 'returns true if the value exists in the set' do
      @set.add(1)
      @set.add(2)

      expect(@set.size).to eql(2)
      expect(@set.has(2)).to be_truthy
    end

    it 'returns false if the value does not exist in the set' do
      expect(@set.size).to eql(0)
      expect(@set.has(2)).to be_falsey
    end
  end

  describe 'clear' do
    it 'removes all elements from the set' do
      @set.add(1)
      @set.add(2)

      expect(@set.size).to eql(2)

      @set.clear

      expect(@set.size).to eql(0)
    end
  end

  describe 'size' do
    it 'returns how many elements the set contains' do
      @set.add(1)
      @set.add(2)

      expect(@set.size).to eql(2)
    end
  end

  describe 'values' do
    it 'returns the array of all values of the set' do
      @set.add(1)
      @set.add(2)

      expect(@set.size).to eql(2)
      expect(@set.values).to match_array([1, 2])
    end
  end
end
