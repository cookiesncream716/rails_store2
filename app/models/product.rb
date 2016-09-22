class Product < ActiveRecord::Base
  belongs_to :category
  has_many :comments
  def self.get_all
  	puts '*********** get all ***************'
  	self.all
  end
  def self.get_one(id)
  	puts '33333333333 get one 333333333333333'
  	self.find(id)
  end
end
