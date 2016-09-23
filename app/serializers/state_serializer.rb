# == Schema Information
#
# Table name: states
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  country_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class StateSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :country
  has_many :wine_regions
  has_many :appellations
  has_many :wines
end
