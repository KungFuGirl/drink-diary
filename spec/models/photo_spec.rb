# == Schema Information
#
# Table name: photos
#
#  id                 :integer          not null, primary key
#  user_id            :integer
#  photo_file_name    :string           not null
#  photo_content_type :string           not null
#  photo_file_size    :integer          not null
#  photo_updated_at   :datetime         not null
#  is_private         :boolean
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  soda_id            :integer
#

require 'rails_helper'

RSpec.describe Photo, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
