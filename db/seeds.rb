# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#


Category.create(category:'Clothing')
Category.create(category:'Toys')
Category.create(category:'Gardening')
Category.create(category:'Automotive')
Category.create(category:'Household')

Product.create(product:'Toaster', description:'used to toast bread', price:22.94, category: Category.fifth)
Product.create(product:'Hiking Boots', description:'worn on feet to go on long walks in woods', price:45.25, category: Category.first)
Product.create(product:'Carrot Seeds', description:'planted in dirt to grow carrots', price:1.98, category: Category.third)
Product.create(product:'Twister', description:'game that tangles people up', price:17.77, category: Category.second)
Product.create(product:'Seat Cover', description:'protects seat', price:38.16, category: Category.fourth)