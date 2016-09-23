class Note < ApplicationRecord
  validates_presence_of :rating

  validates :currency, presence: {
    message: "Currency must be set when setting price", 
    unless: Proc.new { |a| a.price.blank? }
  }
  # price is always stored as integer in cents/lowest monetary denominator
  validates :price, numericality: { only_integer: true }
  belongs_to :user
  # belongs_to :soda
end
