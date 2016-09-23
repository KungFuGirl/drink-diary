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

class Flavor < ApplicationRecord
  validates_presence_of :name

  belongs_to :country
  # has_and_belongs_to_many :sodas

end
