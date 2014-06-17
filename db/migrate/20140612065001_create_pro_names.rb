class CreateProNames < ActiveRecord::Migration
  def change
    create_table :pro_names do |t|
      t.integer :sub_id
      t.string :productName
      t.string :description
      t.integer :price
      t.integer :stock

      t.timestamps
    end
  end
end
