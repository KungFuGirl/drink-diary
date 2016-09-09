class AppellationSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :wine_region
  belongs_to :state
  has_many :varietals
  has_many :blends
  has_many :wines
end
