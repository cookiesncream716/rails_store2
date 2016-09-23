class Product < ActiveRecord::Base
  belongs_to :category
  has_many :comments
  # validates :product, presence: true, uniqueness: { case_sensitive: false }
  # validates :description, presence: true
  # validates :price, presence: true, numericality: true
  # validates :category_id, presence: true
  def self.get_all
  	puts '*********** get all ***************'
  	self.all
  end
  def self.get_one(id)
  	puts '33333333333 get one 333333333333333'
  	self.find(id)
  end
  def self.create_product(product)
  	puts '------------------ create ---------------'
  	# self.create(product)
  	self.create(product)
  end
  def self.update_product(id, product)
  	puts '################ update product ################'
  	self.find(id).update_attributes(product)
  end
  def self.delete(id)
  	self.find(id).destroy
  end
end
