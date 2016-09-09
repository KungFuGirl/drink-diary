class WineRegion < ApplicationRecord
  validates_presence_of :name

  belongs_to :country
  belongs_to :state, optional: true
  has_and_belongs_to_many :varietals
  has_and_belongs_to_many :blends
  has_many :wines
  has_many :appellations
end
