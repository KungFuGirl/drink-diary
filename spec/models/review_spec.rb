# == Schema Information
#
# Table name: reviews
#
#  id                 :integer          not null, primary key
#  user_id            :integer
#  wine_id            :integer
#  photo_file_name    :string
#  photo_content_type :string
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#  date               :date
#  vintage            :integer
#  rating             :integer
#  price              :integer
#  currency           :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_reviews_on_user_id  (user_id)
#  index_reviews_on_wine_id  (wine_id)
#
# Foreign Keys
#
#  fk_rails_74a66bd6c5  (user_id => users.id)
#  fk_rails_95e62ec56c  (wine_id => wines.id)
#

require 'rails_helper'

RSpec.describe Review, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
