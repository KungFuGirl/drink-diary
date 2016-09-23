class NoteSerializer < ActiveModel::Serializer
  attributes :id, :rating, :currency, :price, :text_note, :date, :sweetness_rating, :purchase_location 

  has_many :sodas
end
