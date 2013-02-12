# -*- encoding : utf-8 -*-
class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.text :contacts
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
