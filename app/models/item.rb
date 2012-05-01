class Item < ActiveRecord::Base
  attr_accessible :buy, :sell, :name, :type_id
  has_many :blueprints, through: :materials
end
