class State < ApplicationRecord
  validates_presence_of :name
  belongs_to :country
  has_many :wine_regions
  has_many :appellations
  has_many :wines
end
