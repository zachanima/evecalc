class RemoveTypeIdFromBlueprints < ActiveRecord::Migration
  def up
    remove_column :blueprints, :type_id
  end

  def down
    add_column :blueprints, :type_id, :integer
  end
end
