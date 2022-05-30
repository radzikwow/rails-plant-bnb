class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @offers = Offer.all
  end

  def create
    @offer = Offer.create(offer_params)
    @offer.save
  end

  private

  def offer_params
    params.require(:offer).permit(:price, :area)
  end
end
