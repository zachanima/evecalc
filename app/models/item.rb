class Item < ActiveRecord::Base
  attr_accessible :buy, :sell, :name, :type_id
  has_many :materials
  has_many :blueprints, through: :materials
  scope :outdated, where('updated_at < ? or buy is null or sell is null', Time.now - 6.hours).limit(100)
end
