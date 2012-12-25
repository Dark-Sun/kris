# -*- encoding : utf-8 -*-
class RemoveBodyFromArticle < ActiveRecord::Migration
  def up
  	remove_column :articles, :body
  end

  def down
  end
end
