class AddAvadarColumn < ActiveRecord::Migration
  def change
  	add_attachment :products, :avatar
  end
end
