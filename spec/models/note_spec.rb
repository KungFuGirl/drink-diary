# == Schema Information
#
# Table name: notes
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  text_note         :string
#  rating            :integer          not null
#  date              :date
#  sweetness_rating  :integer
#  purchase_location :string
#  price             :integer
#  currency          :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  soda_id           :integer
#

require 'rails_helper'

RSpec.describe Note, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
