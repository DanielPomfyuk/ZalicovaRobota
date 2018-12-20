class AddingPhoneNumberForUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone_number, :double_precision

  end
end
