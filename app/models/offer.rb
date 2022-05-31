class Offer < ApplicationRecord
  belongs_to :user
  validates :price, presence: true
  validates :user, presence: true

  has_many :bookings
  has_many :users, through: :bookings
end
