# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(:email => "guest_#{Time.now.to_i}#{rand(99)}@example.com")
user.save!(:validate => false)

products = Product.create([{ title: 'Book', price: 499}, {title: 'Movie', price: 699}])
cart = Cart.create({
  user: user,
  cart_items_attributes: [{
    product: products.first
  }, {
    product: products.last,
    quantity: 2
  }]
})
