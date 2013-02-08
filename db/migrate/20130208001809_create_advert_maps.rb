class CreateAdvertMaps < ActiveRecord::Migration
  def self.up
    create_table :advert_maps do |t|
      t.integer    :advert_id
      t.string     :style
      t.binary     :file_contents
    end
  end

  def self.down
    drop_table :advert_maps
  end
end
