class Page < ActiveRecord::Base
  attr_accessible :title, :content
 
  belongs_to :chapter

end
