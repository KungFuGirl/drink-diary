class BlendSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :varietals
  has_many :wines
end
