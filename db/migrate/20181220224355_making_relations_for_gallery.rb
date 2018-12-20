class MakingRelationsForGallery < ActiveRecord::Migration[5.2]
  def change
    add_reference :pictures, :ad, index: true
    add_foreign_key :pictures, :ads
  end
end
