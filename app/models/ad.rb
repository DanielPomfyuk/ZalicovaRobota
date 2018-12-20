class Ad < ApplicationRecord
  enum real_estate_type: [ :flat, :house, :condo ]
  validates :rooms, :square , :adress , :rent_limit_days , :price_per_day , :second_adress, presence: true
  validates :rooms, :square, :rent_limit_days, :price_per_day, numericality: { only_float: true }
  belongs_to :user
end
