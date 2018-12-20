class AddingPriceToAds < ActiveRecord::Migration[5.2]
  def change
    add_column :ads, :price_per_day, :float
  end
end
