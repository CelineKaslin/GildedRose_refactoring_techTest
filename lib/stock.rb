class Stock
  attr_reader :item_stocked

  def initialize
    @item_stocked = []
  end

  def add_item(item)
    @item_stocked << item
  end
end
