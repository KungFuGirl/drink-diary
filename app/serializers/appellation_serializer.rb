class AppellationSerializer < ActiveModel::Serializer
  attributes :id, :name, :wine_region, :state, :blends, :varietals

  belongs_to :wine_region
  belongs_to :state
  has_many :varietals, serializer: VarietalSerializer
  has_many :wines
  has_many :blends, serializer: BlendSerializer
end
