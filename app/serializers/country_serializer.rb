class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :wines
#  has_many :wine_regions
  has_many :states

#  has_many :varietals, serializer: VarietalSerializer
#  has_and_belongs_to_many :blends
end
