# -*- encoding : utf-8 -*-
class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :name
      t.string :map_path
      t.text :desc
      t.string :category
      t.string :adress
      t.string :city

      t.timestamps
    end
  end
end
