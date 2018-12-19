class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.column :type, :integer, default: 0
      t.float :square
      t.integer :rooms
      t.string :adress
      t.integer :rent_limit_days

      t.timestamps
    end
  end
end
