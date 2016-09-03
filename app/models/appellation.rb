class Appellation < ApplicationRecord
  validates_presence_of :name
  belongs_to :wine_region
  belongs_to :state
  # has_and_belongs_to_many :varietals
end
