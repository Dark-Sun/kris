# -*- encoding : utf-8 -*-
class Advert < ActiveRecord::Base
  attr_accessible :adress, :category, :city, :desc, :map_path, :name, :image_path, :map, :image

#  has_attached_file :map, 
 #                   :styles => {:original => '350x265'},
  #					        :url => "/assets/:id/:style/:basename.:extension",
  #					        :path => ":rails_root/app/assets/images/:id/:style/:basename.:extension"
#
 # has_attached_file :image, 
  #          :styles => {:original => '350x265'},
  #					:url => "/assets/:style/:basename.:extension",
#  					:path => ":rails_root/app/assets/images/:style/:basename.:extension"

has_attached_file :map,
                  :storage => :dropbox,
                  :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
                  :styles => {:original => '350x265'},
                  :dropbox_options => {
                        :path => proc { |style| "#{style}/#{id}_#{map.original_filename}" }
                   }
has_attached_file :image,
                  :storage => :dropbox,
                  :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
                  :styles => {:original => '350x265'},
                  :dropbox_options => {
                        :path => proc { |style| "#{style}/#{id}_#{image.original_filename}" }
                   }

  validates :name, 	:length => {:in => 2..20}, :presence => true
  validates :category, 						   :presence => true
  validates :city, 							   :presence => true
  validates :adress, 						   :presence => true


	scope :by_city, lambda {|city| where("city = ?", city)}
	scope :by_category, lambda {|category| where("category = ?", category)}
#
end
