class Blueprint < ActiveRecord::Base
  attr_accessible :name, :type_id
  belongs_to :item
  has_many :materials
  has_many :items, through: :materials

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
