class WineSerializer < ActiveModel::Serializer
  attributes :id, :name, :producer
 
  belongs_to :wine_type
  belongs_to :country
  belongs_to :varietal
  belongs_to :blend
  belongs_to :wine_region
  belongs_to :state
  belongs_to :appellation

end
