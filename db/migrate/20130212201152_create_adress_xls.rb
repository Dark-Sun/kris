# -*- encoding : utf-8 -*-
class CreateAdressXls < ActiveRecord::Migration
  def change
    create_table :adress_xls do |t|

      t.timestamps
    end
  end
end
