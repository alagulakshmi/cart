class Product < ActiveRecord::Base
	belongs_to :sub_category
	 has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
   has_attached_file :document, styles: {thumbnail: "60x60#"}
end
