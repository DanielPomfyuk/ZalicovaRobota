class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|

      t.timestamps
    end
    add_attachment :pictures, :image
  end
end
