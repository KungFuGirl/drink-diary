class Country < ApplicationRecord
  validates_presence_of :name
  has_many :wines
  has_many :wine_regions
  has_many :states
  has_many :classifications
  has_and_belongs_to_many :varietals
  has_and_belongs_to_many :blends
end
