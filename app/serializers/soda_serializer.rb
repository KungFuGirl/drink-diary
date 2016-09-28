class SodaSerializer < ActiveModel::Serializer
  attributes :id, :name, :color, :parent_company, :brand, :origin_data, :is_diet, :is_caffeinated

  belongs_to :user, :key :creator
  belongs_to :user, :key :last_editor
  has_many :photos
  has_many :notes

end
