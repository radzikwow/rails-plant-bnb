class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.string :area

      t.timestamps
    end
  end
end
