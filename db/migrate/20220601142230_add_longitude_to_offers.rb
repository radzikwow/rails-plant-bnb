class AddLongitudeToOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :longitude, :float
  end
end
