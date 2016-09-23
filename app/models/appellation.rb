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

class Appellation < ApplicationRecord
  validates_presence_of :name
  validate :presence_of_state_or_wine_region
  belongs_to :wine_region, optional: true
  belongs_to :state, optional: true
  has_and_belongs_to_many :varietals
  has_and_belongs_to_many :blends
  has_many :wines

  def presence_of_state_or_wine_region
    unless wine_region.present? || state.present?
      errors.add(:wine_region, "State, wine region, or both must be set")
    end
  end
end
