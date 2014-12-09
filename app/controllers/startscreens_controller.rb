class StartscreensController < ApplicationController
  def index
    @startscreens = Startscreen.all
    @user = User.first
    @products = Product.all
  end

  def show
    @startscreen = Startscreen.find_by_zip(params[:id])
    @user = User.first
    @products = Product.all
  end
end
