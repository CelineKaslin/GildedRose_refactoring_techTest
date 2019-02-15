class Item
  attr_accessor :name, :sell_in_date, :quality

  def initialize(name, sell_in_date, quality)
    @name = name
    @sell_in_date = sell_in_date
    @quality = quality
  end

  def item_description
    "name: #{@name}, sell in date: #{@sell_in_date} days, quality: #{@quality}"
  end
end
