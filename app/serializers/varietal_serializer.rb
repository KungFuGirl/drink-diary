class VarietalSerializer < ActiveModel::Serializer
  attributes :id, :name, :is_black
  has_many :countries, serializer: CountrySerializer
  has_many :wines, serializer: WineSerializer
  has_many :blends
end
