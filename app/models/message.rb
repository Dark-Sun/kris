# -*- encoding : utf-8 -*-
class Message < ActiveRecord::Base
  attr_accessible :body, :contacts, :name, :subject
  validates :body, :contacts, :name, :subject, :presence => true


 
end
