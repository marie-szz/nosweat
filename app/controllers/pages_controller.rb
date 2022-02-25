class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @my_products = current_user.products
    @my_bookings = current_user.bookings

    # @my_demands = current_user.product.booking
  end
end
