# == Schema Information
#
# Table name: sodas
#
#  id             :integer          not null, primary key
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
#  parent_company :string
#
# Indexes
#
#  index_sodas_on_country_id      (country_id)
#  index_sodas_on_creator_id      (creator_id)
#  index_sodas_on_last_editor_id  (last_editor_id)
#
# Foreign Keys
#
#  fk_rails_674765df40  (creator_id => users.id)
#  fk_rails_6bfffd3d24  (country_id => countries.id)
#  fk_rails_de3c2ceceb  (last_editor_id => users.id)
#

class Soda < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  belongs_to :last_editor, class_name: 'User'
  belongs_to :country, optional: true
  has_many :photos
  has_and_belongs_to_many :flavors
  has_and_belongs_to_many :ingredients
  has_many :notes
  before_save :downcase_hex
  
  # only allow 6 digit hex colors
  validates :color, format: { with: /[a-f\d]{6}/i, message: "must be a hex number" }, :allow_nil => true

  def downcase_hex
    return self.color.downcase! if color != nil
  end

end
