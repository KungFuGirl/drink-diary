class FlavorSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :country
  has_many :sodas

end
