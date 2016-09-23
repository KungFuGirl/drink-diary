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
# Indexes
#
#  index_wines_on_appellation_id  (appellation_id)
#  index_wines_on_blend_id        (blend_id)
#  index_wines_on_country_id      (country_id)
#  index_wines_on_state_id        (state_id)
#  index_wines_on_varietal_id     (varietal_id)
#  index_wines_on_wine_region_id  (wine_region_id)
#  index_wines_on_wine_type_id    (wine_type_id)
#
# Foreign Keys
#
#  fk_rails_2c09efbe3b  (wine_region_id => wine_regions.id)
#  fk_rails_315269529a  (country_id => countries.id)
#  fk_rails_37fe1b5502  (wine_type_id => wine_types.id)
#  fk_rails_3ff31f4b19  (varietal_id => varietals.id)
#  fk_rails_67a7682e42  (appellation_id => appellations.id)
#  fk_rails_b1b783d47a  (blend_id => blends.id)
#  fk_rails_d8bd98e557  (state_id => states.id)
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
