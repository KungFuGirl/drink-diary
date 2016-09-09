class StateSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :country
  has_many :wine_regions
  has_many :appellations
  has_many :wines
end
