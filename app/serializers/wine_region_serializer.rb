class WineRegionSerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :state, :appellations, :varietals, :blends

  belongs_to :country
  belongs_to :state, optional: true
  has_many :appellations
  has_many :wines
  has_many :varietals
  has_many :blends

end
