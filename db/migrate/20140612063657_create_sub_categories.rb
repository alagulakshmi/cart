class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
      t.integer :categories_id
      t.string :Sub_name

      t.timestamps
    end
  end
end
