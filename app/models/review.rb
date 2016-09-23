class Review < ApplicationRecord
  belongs_to :wine
  belongs_to :user

  has_attached_file :photo

  # should default to user's timezone of "today" if nothing is set - needs to be sent from front end
  validates_presence_of :date, :rating
  # protect uploads against xss
  validates_attachment :photo, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  # if price is not blank, then currency must be set
  validates :currency, presence: {
    message: "Currency must be set when setting price", 
    unless: Proc.new { |a| a.price.blank? }
  }
  # price is always stored as integer in cents/lowest monetary denominator
  validates :price, numericality: { only_integer: true }

end
