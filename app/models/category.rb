class Category < ActiveRecord::Base
	has_many :products
	def self.get_all
		self.all
	end
end
