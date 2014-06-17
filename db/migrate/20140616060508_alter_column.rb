class AlterColumn < ActiveRecord::Migration
  def change
  	rename_column :sub_categories, :categories_id, :category_id
  	rename_column :products, :sub_categories_id, :sub_category_id
  end
end
