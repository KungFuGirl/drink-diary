class SodaSerializer < ActiveModel::Serializer
  attributes :id, :name, :color, :producer, :brand, :origin_data, :is_diet, :is_caffeinated

  belongs_to :creator, key: :user
  belongs_to :last_editor, key: :user
  has_many :photos
  has_many :notes

end
