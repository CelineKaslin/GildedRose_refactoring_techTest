require 'stock'

describe Stock do
  subject(:stock) { described_class.new}
  let(:item_1) { double name: 'magic potion', sell_in_date: 10, quality:30 }
  let(:item_2) { double name: 'gobelin eye', sell_in_date: 2, quality:5 }

  it 'should not have any items by default' do
    expect(stock.item_stocked).to be_empty()
  end

  describe '#add_items' do
    it 'should add the item to the array of item in stock' do
      stock.add_item(item_1)
      stock.add_item(item_2)
      expect(stock.item_stocked).to include(item_1)
      expect(stock.item_stocked).to include(item_2)
    end
  end
end
