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
# Indexes
#
#  index_wine_regions_on_country_id  (country_id)
#  index_wine_regions_on_state_id    (state_id)
#
# Foreign Keys
#
#  fk_rails_4fea36d244  (country_id => countries.id)
#  fk_rails_f6c9038670  (state_id => states.id)
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
