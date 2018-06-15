class Dictionaries
  attr_accessor :items

  def initialize(items = {})
    @items = items
  end

  def empty?
    @items.empty?
  end
end
