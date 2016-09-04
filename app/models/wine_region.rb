class WineRegion < ApplicationRecord
  validates_presence_of :name
  belongs_to :country
  has_many :appellations
  belongs_to :state, optional: true
  has_and_belongs_to_many :varietals
  has_many :wines
  has_and_belongs_to_many :blends
end
