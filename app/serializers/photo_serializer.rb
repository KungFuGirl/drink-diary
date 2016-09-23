class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :photo, :is_private

  belongs_to :soda
  belongs_to :user
end
