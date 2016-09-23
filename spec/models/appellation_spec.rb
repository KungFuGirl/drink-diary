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

require 'rails_helper'

RSpec.describe Appellation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
