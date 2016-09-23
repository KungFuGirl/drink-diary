# == Schema Information
#
# Table name: wines
#
#  id                  :integer          not null, primary key
#  name                :string           not null
#  producer            :string
#  review_for_photo_id :integer
#  country_id          :integer
#  wine_type_id        :integer
#  wine_region_id      :integer
#  state_id            :integer
#  appellation_id      :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  blend_id            :integer
#  varietal_id         :integer
#

class Wine < ApplicationRecord
  belongs_to :wine_type
  belongs_to :country
  belongs_to :wine_region, optional: true
  belongs_to :state, optional: true
  belongs_to :appellation, optional: true
  belongs_to :blend, optional: true
  belongs_to :varietal, optional: true

  has_many :reviews

  validate :blend_or_varietal_present_not_both

  def blend_or_varietal_present_not_both
    if blend.present? && varietal.present?
      errors.add(:blend_or_varietal, "Wine has either blend or varietal set")
    end
  end

end
