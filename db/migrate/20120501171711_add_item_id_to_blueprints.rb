class AddItemIdToBlueprints < ActiveRecord::Migration
  def change
    add_column :blueprints, :item_id, :integer
  end
end
