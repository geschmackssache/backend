json.startscreen do
  json.id @startscreen.zip
  json.user @user.id
end

json.users [@user] do |user|
  json.id @user.id
  json.firstName @user.first_name
  json.lastName @user.last_name
  json.street @user.street
  json.zip @user.zip
  json.city @user.city
  json.phone @user.phone
  json.email @user.email
  json.cart @user.carts.first.id
end

json.carts [@user.carts.first] do |cart|
  json.id cart.id
  json.firstName cart.first_name
  json.lastName cart.last_name
  json.street cart.street
  json.zip cart.zip
  json.city cart.city
  json.phone cart.phone
  json.email cart.email
  json.finished cart.finished
  json.cartItems cart.cart_items.map(&:id)
end

json.cart_items @user.carts.first.cart_items do |cart_item|
  json.id cart_item.id
  json.cart cart_item.cart.id
  json.product cart_item.product.id
  json.quantity cart_item.quantity
end

json.products @products do |product|
  json.id product.id
  json.title product.title
  json.price product.price
end
