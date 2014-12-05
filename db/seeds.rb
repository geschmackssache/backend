# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
products = Product.create([{ title: 'Book', price: 499}, {title: 'Movie', price: 699}])
cart = Cart.create({
  cart_items_attributes: [{
    product: products.first
  }, {
    product: products.last,
    quantity: 2
  }]
})
