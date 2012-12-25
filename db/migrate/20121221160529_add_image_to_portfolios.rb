# -*- encoding : utf-8 -*-
class AddImageToPortfolios < ActiveRecord::Migration
  def change
  	add_attachment :portfolios, :image
  end
end
