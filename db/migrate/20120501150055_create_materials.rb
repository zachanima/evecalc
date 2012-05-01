class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.references :item
      t.references :blueprint
      t.integer :quantity
    end
  end
end
