class Material < ActiveRecord::Base
  attr_accessible :blueprint_id, :item_id, :quantity
  belongs_to :blueprint
  belongs_to :item

  def buy
    self.item.buy * self.quantity
  end
end
