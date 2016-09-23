# == Schema Information
#
# Table name: wine_types
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class WineType < ApplicationRecord
  validates_presence_of :name
  has_many :wines
end
