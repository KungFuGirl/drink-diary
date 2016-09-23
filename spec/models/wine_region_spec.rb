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

require 'rails_helper'

RSpec.describe WineRegion, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
