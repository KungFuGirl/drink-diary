class Flavor < ApplicationRecord
  validates_presence_of :name

  belongs_to :country
  # has_and_belongs_to_many :sodas

end
