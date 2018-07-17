module Containers
  describe Hash do
    before do
      @hash = Hash.new
    end

    describe 'initialize' do
      it 'creates a new empty hash table' do
        expect(@hash.empty?).to be_truthy
      end
    end

    describe 'position_of' do
      it 'returns the number to generate the position of each entry in the table' do
        expect(@hash.position_of("Gandlaf")).to eql(19)
        expect(@hash.position_of("John")).to eql(29)
        expect(@hash.position_of("Tyrion")).to eql(16)
      end
    end

    describe 'put' do
      it 'adds a new item to the hash table' do
        @hash.put("Gandalf", "gandalf_the_grey@wizard.com")
        @hash.put("Legolas", "legolas@elf.com")
        @hash.put("Aragorn", "strider@gondor.com")
        @hash.put("Frodo", "frodo_baggins@shire.com")
        p @hash.inspect
        expect(@hash.size).to eql(4)
      end
    end

    describe 'remove' do
      it 'removes the value from the hash table using the key' do
        @hash.put("Gandalf", "gandalf_the_grey@wizard.com")
        @hash.put("Legolas", "legolas@elf.com")
        @hash.put("Aragorn", "strider@gondor.com")
        @hash.put("Frodo", "frodo_baggins@shire.com")

        expect(@hash.size).to eql(4)

        @hash.remove("Legolas")

        expect(@hash.size).to eql(3)
      end
    end

    describe 'get' do
      it 'returns a specific value searched by the key' do
        @hash.put("Gandalf", "gandalf_the_grey@wizard.com")
        @hash.put("Legolas", "legolas@elf.com")
        @hash.put("Aragorn", "strider@gondor.com")
        @hash.put("Frodo", "frodo_baggins@shire.com")

        expect(@hash.size).to eql(4)

        expect(@hash.get("Aragorn")).to eql("strider@gondor.com")
      end
    end

    describe 'size' do
      it 'returns the number of elements in the hash table' do
        @hash.put("Gandalf", "gandalf_the_grey@wizard.com")
        @hash.put("Legolas", "legolas@elf.com")

        expect(@hash.size).to eql(2)
      end
    end
  end
end
