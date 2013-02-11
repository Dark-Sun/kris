class AdvertChangeColumn1 < ActiveRecord::Migration
  def up
  	change_column :adverts, :name, :text, :limit => nil
  end

  def down
  end
end
