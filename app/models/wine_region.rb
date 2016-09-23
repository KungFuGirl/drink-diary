# == Schema Information
#
# Table name: wine_regions
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  country_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  state_id   :integer
#

class WineRegion < ApplicationRecord
  validates_presence_of :name

  belongs_to :country
  belongs_to :state, optional: true
  has_and_belongs_to_many :varietals
  has_and_belongs_to_many :blends
  has_many :wines
  has_many :appellations
end
