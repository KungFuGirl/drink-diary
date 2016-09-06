class BlendSerializer < ActiveModel::Serializer
  attributes :id, :name, :varietals

  has_many :varietals
  has_many :wines
end
