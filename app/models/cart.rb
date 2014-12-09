class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :cart_items
  has_many :products, through: :cart_items
  accepts_nested_attributes_for :cart_items
  accepts_nested_attributes_for :products

  def initialize args
    super
    self.first_name = self.user.first_name
    self.last_name = self.user.last_name
    self.street = self.user.street
    self.zip = self.user.zip
    self.city = self.user.city
    self.phone = self.user.phone
    self.email = self.user.email
  end
end
