# == Schema Information
#
# Table name: countries
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name 

  has_many :wines
  has_many :wine_regions
  has_many :states

  has_many :varietals
  has_many :blends
end
