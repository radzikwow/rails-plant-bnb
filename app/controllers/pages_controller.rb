class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
    if params[:query].present?
      @offers = Offer.where("area ILIKE ?", "%#{params[:query]}%")
    else
      @offers = Offer.all
    end
  end
end
