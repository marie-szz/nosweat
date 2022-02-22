class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @products = policy_scope(Product)
  end

  def show
    @product = Product.find(params[:id])
    authorize @product
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    authorize @product
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:sport_category, :name, :price, :description, :location, :quality, :photo_url,
                                    :delivery)
  end
end
