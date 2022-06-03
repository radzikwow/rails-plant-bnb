class Offer < ApplicationRecord

  belongs_to :user
  validates :price, presence: true
  validates :user, presence: true

  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  geocoded_by :area
  after_validation :geocode, if: :will_save_change_to_area?
end
