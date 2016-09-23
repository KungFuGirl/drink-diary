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
# Indexes
#
#  index_notes_on_soda_id  (soda_id)
#  index_notes_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_763135635b  (soda_id => sodas.id)
#  fk_rails_7f2323ad43  (user_id => users.id)
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
  belongs_to :soda
end
