# == Schema Information
#
# Table name: countries
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Country < ApplicationRecord
  validates_presence_of :name
  has_many :wines
  has_many :wine_regions
  has_many :states
  has_and_belongs_to_many :varietals
  has_and_belongs_to_many :blends
  has_many :flavors
end
