# -*- encoding : utf-8 -*-
class Advert < ActiveRecord::Base
  attr_accessible :adress, :category, :city, :desc, :map_path, :name, :image_path, :map, :image
  has_attached_file :map, 
  					:url => "/assets/:id/:style/:basename.:extension",
  					:path => ":rails_root/app/assets/images/:id/:style/:basename.:extension"

  has_attached_file :image, :styles => {:normal => '350x265', :small => '250x250'},
  					:url => "/assets/:id/:style/:basename.:extension",
  					:path => ":rails_root/app/assets/images/:style/:basename.:extension"

  validates :name, 	:length => {:in => 2..20}, :presence => true
  validates :category, 						   :presence => true
  validates :city, 							   :presence => true
  validates :adress, 						   :presence => true


	scope :by_city, lambda {|city| where("city = ?", city)}
	scope :by_category, lambda {|category| where("category = ?", category)}

end
