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

require 'rails_helper'

RSpec.describe Wine, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
