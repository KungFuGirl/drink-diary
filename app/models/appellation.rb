class Appellation < ApplicationRecord
  validates_presence_of :name
  belongs_to :wine_region, optional: true
  belongs_to :state, optional: true
  has_and_belongs_to_many :varietals
  has_many :wines
end
