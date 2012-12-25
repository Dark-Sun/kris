# -*- encoding : utf-8 -*-
class New < ActiveRecord::Base
  attr_accessible :body, :title

  validates_presence_of :title, :body
  
  validate :title, :lenght => { :in => 2..20 }
  validate :body,  :lenght => { :in => 10..1000 }

end
