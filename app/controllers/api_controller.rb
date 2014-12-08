class ApiController < ApplicationController
  def users
    # @user = current_or_guest_user
    @user = User.first
    @products = Product.all
  end
end
