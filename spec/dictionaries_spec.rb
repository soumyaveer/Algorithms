require_relative "../src/dictionaries"

describe Dictionaries do
  before do
    @dictionary = Dictionaries.new
  end

  describe 'initialize' do
    it 'creates an empty dictionary' do
      expect(@dictionary.empty?).to be_truthy
    end
  end

  describe 'set' do
    it 'adds a new item to the dictionary' do
      @dictionary.set("Gandalf", "gandalf_the_grey@wizard.com")
      @dictionary.set("Legolas", "legolas@elf.com")
      @dictionary.set("Aragorn", "strider@gondor.com")
      @dictionary.set("Frodo", "frodo_baggins@shire.com")

      expect(@dictionary.size).to eql(4)
      expect(@dictionary.items).to eql(
                                     { :Gandalf => "gandalf_the_grey@wizard.com",
                                       :Legolas => "legolas@elf.com",
                                       :Aragorn => "strider@gondor.com",
                                       :Frodo => "frodo_baggins@shire.com"
                                     }
                                   )
    end
  end

  describe 'delete' do
    it 'removes the value from the dictionary using the key' do
      @dictionary.set("Gandalf", "gandalf_the_grey@wizard.com")
      @dictionary.set("Legolas", "legolas@elf.com")
      @dictionary.set("Aragorn", "strider@gondor.com")
      @dictionary.set("Frodo", "frodo_baggins@shire.com")

      expect(@dictionary.size).to eql(4)
      expect(@dictionary.items).to eql(
                                     { :Gandalf => "gandalf_the_grey@wizard.com",
                                       :Legolas => "legolas@elf.com",
                                       :Aragorn => "strider@gondor.com",
                                       :Frodo => "frodo_baggins@shire.com"
                                     }
                                   )

      @dictionary.remove("legolas")

      expect(@dictionary.size).to eql(3)
      expect(@dictionary.items).to eql(
                                     { :Gandalf => "gandalf_the_grey@wizard.com",
                                       :Aragorn => "strider@gondor.com",
                                       :Frodo => "frodo_baggins@shire.com"
                                     }
                                   )
    end
  end


  describe 'has' do
    it 'returns true if the key exists in the dictionary' do
      @dictionary.set("Gandalf", "gandalf_the_grey@wizard.com")
      @dictionary.set("Legolas", "legolas@elf.com")
      @dictionary.set("Aragorn", "strider@gondor.com")
      @dictionary.set("Frodo", "frodo_baggins@shire.com")

      expect(@dictionary.size).to eql(4)
      expect(@dictionary.has?("Aragorn")).to be_truthy
    end

    it 'returns false if the key does not exist in the dictionary' do
      @dictionary.set("Gandalf", "gandalf_the_grey@wizard.com")
      @dictionary.set("Legolas", "legolas@elf.com")
      @dictionary.set("Aragorn", "strider@gondor.com")
      @dictionary.set("Frodo", "frodo_baggins@shire.com")

      expect(@dictionary.size).to eql(4)
      expect(@dictionary.has?("Sam")).to be_falsey
    end
  end

  describe 'get' do
    it 'returns a specific value searched by the key' do
      @dictionary.set("Gandalf", "gandalf_the_grey@wizard.com")
      @dictionary.set("Legolas", "legolas@elf.com")
      @dictionary.set("Aragorn", "strider@gondor.com")
      @dictionary.set("Frodo", "frodo_baggins@shire.com")

      expect(@dictionary.size).to eql(4)

      searched_value = @dictionary.get("Frodo")

      expect(searched_value).to eql("frodo_baggins@shire.com")
    end

    it 'returns nil if it cannot find the value' do
      @dictionary.set("Gandalf", "gandalf_the_grey@wizard.com")
      @dictionary.set("Legolas", "legolas@elf.com")
      @dictionary.set("Aragorn", "strider@gondor.com")
      @dictionary.set("Frodo", "frodo_baggins@shire.com")

      expect(@dictionary.size).to eql(4)

      searched_value = @dictionary.get("Gimli")

      expect(searched_value).to eql(nil)
    end
  end

  describe 'clear' do
    it 'clears the values from the dictionary' do
      @dictionary.set("Gandalf", "gandalf_the_grey@wizard.com")
      @dictionary.set("Legolas", "legolas@elf.com")
      @dictionary.set("Aragorn", "strider@gondor.com")
      @dictionary.set("Frodo", "frodo_baggins@shire.com")

      expect(@dictionary.size).to eql(4)

      @dictionary.clear

      expect(@dictionary.empty?).to be_truthy
    end
  end

  describe 'size' do
    it 'returns how many elements the dictionary contains' do
      @dictionary.set("Gandalf", "gandalf_the_grey@wizard.com")
      @dictionary.set("Legolas", "legolas@elf.com")
      @dictionary.set("Aragorn", "strider@gondor.com")
      @dictionary.set("Frodo", "frodo_baggins@shire.com")

      expect(@dictionary.size).to eql(4)
    end
  end

  describe 'keys' do
    it 'returns an array of all the keys in the dictionary' do
      @dictionary.set("Gandalf", "gandalf_the_grey@wizard.com")
      @dictionary.set("Legolas", "legolas@elf.com")
      @dictionary.set("Aragorn", "strider@gondor.com")
      @dictionary.set("Frodo", "frodo_baggins@shire.com")

      expect(@dictionary.size).to eql(4)

      expect(@dictionary.keys).to match_array(["Gandalf", "Logolas", "Aragorn", "Frodo"])
    end

    it 'returns empty array if there are no elements in the dictionary' do
      expect(@dictionary.keys).to match_array([])
    end
  end

  describe 'values' do
    it 'returns an array of values in the dictionary' do
      @dictionary.set("Gandalf", "gandalf_the_grey@wizard.com")
      @dictionary.set("Legolas", "legolas@elf.com")
      @dictionary.set("Aragorn", "strider@gondor.com")
      @dictionary.set("Frodo", "frodo_baggins@shire.com")

      expect(@dictionary.size).to eql(4)

      expect(@dictionary.values).to match_array(
                                    ["gandalf_the_grey@wizard.com",
                                     "legolas@elf.com",
                                     "strider@gondor.com",
                                     "frodo_baggins@shire.com"
                                    ]
                                  )
    end

    it 'returns empty array if dictionary does not contain any elements' do
      expect(@dictionary.values).to match_array([])
    end
  end
end
