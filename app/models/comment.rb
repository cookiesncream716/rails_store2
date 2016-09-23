class Comment < ActiveRecord::Base
  belongs_to :product
  validates :comment, presence: true
  def self.get_one(id)
  	self.where(product_id: id)
  end
  def self.get_all
  	self.all.order(:product_id)
  end
  def self.create_comment(comment)
  	new_comment = self.new(comment)
  	if new_comment.valid? == true
  		new_comment.save
  		return
  	else
  		@message = new_comment.errors.full_messages
  		return @message	
  	end
  end
end
