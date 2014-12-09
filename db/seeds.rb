# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
startscreen = Startscreen.create(:zip => 10245)

user = User.create(
  email: "guest_#{Time.now.to_i}#{rand(99)}@example.com",
  first_name: 'Max',
  last_name: 'Mustermann',
  street: 'Musterstraße 1',
  zip: '12345',
  city: 'Musterstadt',
  phone: '1234-567890'
)
user.save!(:validate => false)

products = Product.create([{ title: 'Book', price: 499}, {title: 'Movie', price: 699}])
cart = user.carts.build({
  cart_items_attributes: [{
    product: products.first,
    quantity: 1
  }, {
    product: products.last,
    quantity: 2
  }]
})
cart.save
