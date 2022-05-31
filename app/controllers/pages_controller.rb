class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
    @offers = Offer.all
  end
end
