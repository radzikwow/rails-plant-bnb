class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
    @offer.save
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render(:new)
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to root_path
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update!(offer_params)
    redirect_to offer_path(@offer)
  end

  def show
    @offer = Offer.find(params[:id])
  end

  private

  def offer_params
    params.require(:offer).permit(:price, :area, :description)
  end
end
