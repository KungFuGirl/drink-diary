# == Schema Information
#
# Table name: states
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  country_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe State, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
