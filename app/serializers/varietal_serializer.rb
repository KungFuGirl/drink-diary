class VarietalSerializer < ActiveModel::Serializer
  attributes :id, :name, :is_black, :countries, :blends
  has_many :countries
  has_many :wines
  has_many :blends
end
