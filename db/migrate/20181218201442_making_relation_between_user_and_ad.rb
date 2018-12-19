class MakingRelationBetweenUserAndAd < ActiveRecord::Migration[5.2]
  def change
    add_reference :ads, :user, index: true
    add_foreign_key :ads, :users
  end
end
