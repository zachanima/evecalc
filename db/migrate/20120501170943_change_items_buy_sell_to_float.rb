class ChangeItemsBuySellToFloat < ActiveRecord::Migration
  def up
    change_column :items, :buy, :float
    change_column :items, :sell, :float
    Item.all.each do |item|
      item.buy /= 100
      item.sell /= 100
      item.save
    end
  end

  def down
    Item.all.each do |item|
      item.buy *= 100
      item.sell *= 100
      item.save
    end
    change_column :items, :buy, :integer
    change_column :items, :sell, :integer
  end
end
