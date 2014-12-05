class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :cart_items
  has_many :products, through: :cart_items
  accepts_nested_attributes_for :cart_items
  accepts_nested_attributes_for :products
end
