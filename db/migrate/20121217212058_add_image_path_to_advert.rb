# -*- encoding : utf-8 -*-
class AddImagePathToAdvert < ActiveRecord::Migration
  def change
  	add_column :adverts, :image_path, :string
  end
end
