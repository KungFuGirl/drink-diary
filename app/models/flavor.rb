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
# Indexes
#
#  index_flavors_on_country_id  (country_id)
#
# Foreign Keys
#
#  fk_rails_3225746def  (country_id => countries.id)
#

class Flavor < ApplicationRecord
  validates_presence_of :name

  belongs_to :country, optional: true
  has_and_belongs_to_many :sodas
end
