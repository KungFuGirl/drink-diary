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
# Indexes
#
#  index_appellations_on_state_id        (state_id)
#  index_appellations_on_wine_region_id  (wine_region_id)
#
# Foreign Keys
#
#  fk_rails_7383b87d35  (state_id => states.id)
#  fk_rails_c5a2566893  (wine_region_id => wine_regions.id)
#

class AppellationSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :wine_region
  belongs_to :state
  has_many :varietals
  has_many :blends
  has_many :wines
end
