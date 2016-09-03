class Varietal < ApplicationRecord
  validates_presence_of :name
  validates_inclusion_of :is_black, in: [true, false]
  has_and_belongs_to_many :blends
  has_and_belongs_to_many :countries
  has_and_belongs_to_many :wine_regions
end
