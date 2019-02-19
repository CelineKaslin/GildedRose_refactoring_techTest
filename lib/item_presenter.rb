require 'forwardable'

class ItemPresenter
  extend Forwardable

  def_delegators :item, :name, :name=, :sell_in, :sell_in=,
  :quality, :quality=

  def initialize(item)
    @item = item
  end

  def not_aged_brie_nor_backstage?
    !aged_brie? && !backstage_pass?
  end

  def aged_brie_or_backstage?
    aged_brie? || backstage_pass?
  end

  def aged_brie?
    name == "Aged Brie"
  end

  def backstage_pass?
    name == "Backstage passes to a TAFKAL80ETC concert"
  end

  private

  attr_reader :item



end
