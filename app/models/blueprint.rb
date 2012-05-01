class Blueprint < ActiveRecord::Base
  attr_accessible :type_id, :item_id, :materials_attributes
  belongs_to :item
  has_many :materials
  has_many :items, through: :materials
  accepts_nested_attributes_for :materials

  def buy
    self.materials.collect(&:buy).inject(:+)
  end

  def profit
    self.item.sell - self.buy
  end

  def profit_in_percent
    (self.profit * 100 / self.buy).to_i
  end
end
