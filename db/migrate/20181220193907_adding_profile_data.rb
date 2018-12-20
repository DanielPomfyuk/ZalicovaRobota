class AddingProfileData < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    change_column :users, :phone_number, :string
  end
end
