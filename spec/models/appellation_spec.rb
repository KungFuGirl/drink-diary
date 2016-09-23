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

require 'rails_helper'

RSpec.describe Appellation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
