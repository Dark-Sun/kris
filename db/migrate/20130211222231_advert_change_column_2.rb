# -*- encoding : utf-8 -*-
class AdvertChangeColumn2 < ActiveRecord::Migration
  def up
  	change_column :adverts, :adress, :text, :limit => nil
  end

  def down
  end
end
