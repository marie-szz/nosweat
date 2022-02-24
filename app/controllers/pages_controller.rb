class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @my_products = current_user.products
    @my_bookings
    @my_demands
  end
end
