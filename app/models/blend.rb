class Blend < ApplicationRecord
  validates_presence_of :name
  has_many :varietal
end
