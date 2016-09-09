class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name 

  has_many :wines
  has_many :wine_regions
  has_many :states

  has_many :varietals
  has_many :blends
end
