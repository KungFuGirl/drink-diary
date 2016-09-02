class Varietal < ApplicationRecord
  validates_presence_of :name, :is_black
  has_many :blend
end
