json.user do
  json.email @user.email
  json.cart [@user.carts.first.id]
end

json.carts [@user.carts.first] do |cart|
  json.id cart.id
  json.finished cart.finished
  json.cart_item @user.carts.first.cart_items.map(&:id)
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
