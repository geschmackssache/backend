class ApiController < ApplicationController
  def index
    # @user = current_or_guest_user
    @user = User.first
    @products = Product.all
  end
end
