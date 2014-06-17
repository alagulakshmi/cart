class CreateProductDetails < ActiveRecord::Migration
  def change
    create_table :product_details do |t|
      t.integer :sub_categories_id
      t.string :productName
      t.string :description
      t.integer :price
      t.integer :stock

      t.timestamps
    end
  end
end
