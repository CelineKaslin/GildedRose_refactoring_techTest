require 'stock'

describe Stock do
  subject(:stock) { described_class.new}
  let(:item) { double name: 'magic potion', sell_in_date: 10, quality:30 }

  it 'should not have any items by default' do
    expect(stock.item_stocked).to be_empty()
  end

end
