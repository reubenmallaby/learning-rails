class Chapter < ActiveRecord::Base
  attr_accessible :order, :page_count, :title
 
  has_many :pages

end
