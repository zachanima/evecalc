class Material < ActiveRecord::Base
  attr_accessible :blueprint, :item, :quantity
  belongs_to :blueprint
  belongs_to :item
end
