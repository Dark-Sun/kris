# -*- encoding : utf-8 -*-
class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :name
      t.string :desc

      t.timestamps
    end
  end
end
