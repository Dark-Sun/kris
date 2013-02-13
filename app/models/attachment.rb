# -*- encoding : utf-8 -*-
class Attachment < ActiveRecord::Base
	attr_accessible :file
	validates :file, :attachment_presence => true
	
 	has_attached_file :file,
                  :storage => :dropbox,
                  :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
                  :dropbox_options => {
                        :path => proc { |style| "#{id}_#{file.original_filename}" }
                   }
end
