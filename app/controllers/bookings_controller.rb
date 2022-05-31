class BookingsController < ApplicationController

  def show
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.find_by(offer: @offer, user: current_user)
  end

  def new
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(offer: @offer, user: current_user)

    if @booking.save
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
end
