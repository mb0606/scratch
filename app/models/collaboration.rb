class Collaboration < ActiveRecord::Base
   #attr_accessible :wiki_id


   belongs_to :user
   belongs_to :wiki
end
