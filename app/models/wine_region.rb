class WineRegion < ApplicationRecord
  validates_presence_of :name
  belongs_to :country
  belongs_to :state
  # had_many :appellations
  has_and_belongs_to_many :varietals
end
