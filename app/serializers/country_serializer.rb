class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name, :wine_regions, :states, :varietals, :blends

  has_many :wines
  has_many :wine_regions
  has_many :states

  has_many :varietals, serializer: VarietalSerializer
  has_many :blends
end
