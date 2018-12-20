class Ad < ApplicationRecord
  enum real_estate_type: [ :flat, :house, :condo ]
  validates :rooms, :square , :adress , :rent_limit_days , presence: true
  validates :rooms, :square, :rent_limit_days, numericality: { only_float: true }
  belongs_to :user
end
