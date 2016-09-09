class Blend < ApplicationRecord
  validates_presence_of :name

  has_and_belongs_to_many :varietals
  has_and_belongs_to_many :appellations
  has_and_belongs_to_many :wine_regions
  has_and_belongs_to_many :countries
  has_many :wines
end
