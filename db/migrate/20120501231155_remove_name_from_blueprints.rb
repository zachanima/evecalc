class RemoveNameFromBlueprints < ActiveRecord::Migration
  def up
    remove_column :blueprints, :name
  end

  def down
    add_column :blueprints, :name, :string
  end
end
