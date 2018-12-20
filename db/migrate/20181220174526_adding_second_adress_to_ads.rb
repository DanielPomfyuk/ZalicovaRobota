class AddingSecondAdressToAds < ActiveRecord::Migration[5.2]
  def change
    add_column :ads, :second_adress, :string
  end
end
