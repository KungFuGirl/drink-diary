# == Schema Information
#
# Table name: wine_types
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class WineTypeSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :wines
end
