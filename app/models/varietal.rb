# == Schema Information
#
# Table name: varietals
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  is_black   :boolean          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Varietal < ApplicationRecord
  validates_presence_of :name
  validates_inclusion_of :is_black, in: [true, false]

  has_and_belongs_to_many :blends
  has_and_belongs_to_many :countries
  has_and_belongs_to_many :wine_regions
  has_and_belongs_to_many :appellations
  has_many :wines
end
