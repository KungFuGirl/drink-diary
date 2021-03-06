# == Schema Information
#
# Table name: reviews
#
#  id                 :integer          not null, primary key
#  user_id            :integer
#  wine_id            :integer
#  photo_file_name    :string
#  photo_content_type :string
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#  date               :date
#  vintage            :integer
#  rating             :integer
#  price              :integer
#  currency           :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_reviews_on_user_id  (user_id)
#  index_reviews_on_wine_id  (wine_id)
#
# Foreign Keys
#
#  fk_rails_74a66bd6c5  (user_id => users.id)
#  fk_rails_95e62ec56c  (wine_id => wines.id)
#

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
