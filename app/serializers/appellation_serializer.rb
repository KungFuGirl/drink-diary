# == Schema Information
#
# Table name: appellations
#
#  id             :integer          not null, primary key
#  name           :string           not null
#  wine_region_id :integer
#  state_id       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class AppellationSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :wine_region
  belongs_to :state
  has_many :varietals
  has_many :blends
  has_many :wines
end
