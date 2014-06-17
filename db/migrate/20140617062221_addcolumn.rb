class Addcolumn < ActiveRecord::Migration
  def change
  	add_column :products, :file_name, :string
  end
end
