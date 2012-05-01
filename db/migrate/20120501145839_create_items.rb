class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :type_id
      t.string :name
      t.integer :buy
      t.integer :sell

      t.timestamps
    end
  end
end
