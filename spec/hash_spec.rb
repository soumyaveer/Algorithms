require_relative "../src/hash"

describe Hash do
  before do
    @hash = Hash.new
  end

  describe 'initialize' do
    it 'creates a new empty hash table' do
      expect(@hash.empty?).to be_truthy
    end
  end
end
