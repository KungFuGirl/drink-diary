# == Schema Information
#
# Table name: wine_regions
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  country_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  state_id   :integer
#

class WineRegionSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :country
  belongs_to :state, optional: true
  has_many :appellations
  has_many :wines
  has_many :varietals
  has_many :blends

end
