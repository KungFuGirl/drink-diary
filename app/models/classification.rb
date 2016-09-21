class Classification < ApplicationRecord
  validates_presence_of :name

  belongs_to :country
  has_many :appellations
end
