class Comment < ActiveRecord::Base
  belongs_to :product
  def self.get_one(id)
  	
  end
end
