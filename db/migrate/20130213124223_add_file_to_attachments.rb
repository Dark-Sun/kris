class AddFileToAttachments < ActiveRecord::Migration
  def change
  	add_column :attachments, :file_file_name, :string
  end
end
