# -*- encoding : utf-8 -*-
class Portfolio < ActiveRecord::Base
  attr_accessible :desc, :name, :image

  validates :name, :presence => true, :length => {:in => 2..40 }
  validates_attachment_presence :image

  has_attached_file :image, :styles => { :preview => "350x300", 
  										 :thumb => "70x70#" },
  					:url => "/assets/:id/:style/:basename.:extension",
  					:path => ":rails_root/app/assets/images/:id/:style/:basename.:extension"
end
