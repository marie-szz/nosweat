class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index

    if params[:size].present? && params[:location].present? && params[:quality].present?
      @products = policy_scope(Product).search_by_size(params[:size]).search_by_location(params[:location]).search_by_quality(params[:quality])
    elsif params[:quality].present?
      @products = policy_scope(Product).search_by_quality(params[:quality])
    elsif params[:size].present?
      @products = policy_scope(Product).search_by_size(params[:size])
    elsif params[:location].present?
      @products = policy_scope(Product).search_by_location(params[:location])
    else
      @products = policy_scope(Product)
    end

    @markers = @products.map do |product|
      {
        lat: product.user.latitude,
        lng: product.user.longitude
      }
    end
  end

  def show
    @product = Product.find(params[:id])
    @booking = Booking.new
    @bookings = Booking.where(user: current_user, product: @product)
    authorize @product
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    authorize @product
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:sport_category, :name, :price, :description, :location, :quality, :delivery, :size, photos: [])
  end
end
