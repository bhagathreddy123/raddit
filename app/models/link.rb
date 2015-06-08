class Link < ActiveRecord::Base
belongs_to :user 
  has_many :comments
 acts_as_votable

 def self.search(search)
  if search
    where( 'title LIKE ?', "%#{search}%")
  else
   all
  end
end



# def self.search(query)
#   where("title like ?", "%#{query}%") 
# end




end




