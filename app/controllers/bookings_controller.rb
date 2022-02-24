class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @product = Product.find(params[:product_id])
    @booking = Booking.new(booking_params)
    @booking.product = @product
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to product_path(@product), notice: "Demande de réservation envoyée !"
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :product_id, :status)
  end
end
