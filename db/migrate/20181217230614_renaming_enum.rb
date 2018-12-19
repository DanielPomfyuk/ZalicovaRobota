class RenamingEnum < ActiveRecord::Migration[5.2]
  def change
    rename_column :ads, :type, :real_estate_type
  end
end
