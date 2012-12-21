class Page < ActiveRecord::Base
  attr_accessible :chapter_id, :content
 
  belongs_to :chapter

end
