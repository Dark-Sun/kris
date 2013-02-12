# -*- encoding : utf-8 -*-
class AdressXls < ActiveRecord::Base
 	validates :file, :attachment_presence => true
 	
	has_attached_file :file,
                  :storage => :dropbox,
                  :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",      
                  :dropbox_options => {
                        :path => proc { |style| "#{style}/#{id}_#{map.original_filename}" }
                    }
end
