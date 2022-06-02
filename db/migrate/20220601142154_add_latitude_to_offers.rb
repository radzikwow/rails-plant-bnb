class AddLatitudeToOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :latitude, :float
  end
end
