class Wine < ApplicationRecord
  # has_many :reviews
  belongs_to :wine_type
  belongs_to :country

  belongs_to :wine_region, optional: true
  belongs_to :state, optional: true
  belongs_to :appellation, optional: true

  has_many :reviews
end
