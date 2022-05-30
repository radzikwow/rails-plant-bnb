class Offer < ApplicationRecord
  belongs_to :user
  validates :price, presence: true
  validates :user, presence: true
end
