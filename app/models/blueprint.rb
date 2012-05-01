class Blueprint < ActiveRecord::Base
  attr_accessible :name, :type_id
  has_many :materials
  has_many :items, through: :materials
end
