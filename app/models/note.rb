# == Schema Information
#
# Table name: notes
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  text_note         :string
#  rating            :integer          not null
#  date              :date
#  sweetness_rating  :integer
#  purchase_location :string
#  price             :integer
#  currency          :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  soda_id           :integer
#

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
