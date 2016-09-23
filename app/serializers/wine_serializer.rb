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

class WineSerializer < ActiveModel::Serializer
  attributes :id, :name, :producer
 
  belongs_to :wine_type
  belongs_to :country
  belongs_to :varietal
  belongs_to :blend
  belongs_to :wine_region
  belongs_to :state
  belongs_to :appellation

end
