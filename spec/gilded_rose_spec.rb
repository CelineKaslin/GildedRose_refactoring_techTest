require 'gilded_rose'
require 'byebug'

describe GildedRose do

  let(:items) { [Item.new("foo", 0, quality)] }
  let(:quality) { 0 }
  before do
    GildedRose.new(items).update_quality()
  end

  describe "#update_quality" do
    it "does not change the name" do
      expect(items[0].name).to eq "foo"
    end

    it "does not reduce the quality below 0" do
      expect(items[0].quality).to eq 0
    end

    context 'with an initial quality of 10' do
      let(:quality) { 10 }
      it "does not reduce the quality below 0" do
        expect(items[0].quality).to eq 8
      end
    end

  end

end
