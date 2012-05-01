class Item < ActiveRecord::Base
  attr_accessible :buy, :sell, :name, :type_id
end
