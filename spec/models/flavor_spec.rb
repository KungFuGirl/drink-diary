# == Schema Information
#
# Table name: flavors
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  country_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Flavor, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
