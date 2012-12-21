class Chapter < ActiveRecord::Base
  attr_accessible :order, :title, :description

  validates :title, :presence => true
  validates :description, :presence => true
 
  has_many :pages

end
