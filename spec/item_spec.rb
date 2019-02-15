require 'item'

describe Item do
  subject(:item) { described_class.new('magic potion', 10, 30) }

  describe '#attribute of Item' do
    it 'return the name of the item ' do
      expect(item.name).to eq('magic potion')
    end

    it 'return the sell in date of the item' do
      expect(item.sell_in).to eq 10
    end

    it 'return the quality of the item' do
      expect(item.quality).to eq 30
    end
  end

  describe '#to_s' do
    it 'return the description of the item' do
      expect(item.to_s).to eq('magic potion, 10, 30')
    end
  end

end
