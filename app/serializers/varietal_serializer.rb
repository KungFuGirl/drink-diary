# == Schema Information
#
# Table name: varietals
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  is_black   :boolean          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class VarietalSerializer < ActiveModel::Serializer
  attributes :id, :name, :is_black

  has_many :countries
  has_many :wines
  has_many :blends
end
