# -*- encoding : utf-8 -*-
class AddImageAndMapToAdverts < ActiveRecord::Migration
  def change
  	add_attachment :adverts, :map 
  	add_attachment :adverts, :image
  end
end
