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
# Indexes
#
#  index_sodas_on_country_id      (country_id)
#  index_sodas_on_creator_id      (creator_id)
#  index_sodas_on_last_editor_id  (last_editor_id)
#  index_sodas_on_user_id         (user_id)
#
# Foreign Keys
#
#  fk_rails_674765df40  (creator_id => users.id)
#  fk_rails_6bfffd3d24  (country_id => countries.id)
#  fk_rails_971b0d949d  (user_id => users.id)
#  fk_rails_de3c2ceceb  (last_editor_id => users.id)
#

require 'rails_helper'

RSpec.describe Soda, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
