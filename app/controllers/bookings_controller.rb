class BookingsController < ApplicationController

  def show
    @offer = Offer.find(params[:offer_id])
    #@booking = Booking.find_by(offer: @offer, user: current_user)
    @booking = Booking.find(params[:id])
  end

  def new
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(bookings_params)
    @booking.user = current_user
    @booking.offer = @offer


    if @booking.save!
      redirect_to offer_booking_path(params[:offer_id], @booking.id)
    else
      render :new
    end
  end

  def destroy
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.find_by(offer: @offer, user: current_user)
    @booking.destroy
    redirect_to root_path
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

# offer: @offer, user: current_user
