# == Schema Information
#
# Table name: sodas
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  country_id     :integer
#  name           :string
#  brand          :string
#  origin_data    :string
#  is_diet        :boolean
#  is_caffeinated :boolean
#  color          :string
#  creator_id     :integer
#  last_editor_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'rails_helper'

RSpec.describe Soda, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
