# == Schema Information
#
# Table name: blends
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Blend < ApplicationRecord
  validates_presence_of :name

  has_and_belongs_to_many :varietals
  has_and_belongs_to_many :appellations
  has_and_belongs_to_many :wine_regions
  has_and_belongs_to_many :countries
  has_many :wines
end
