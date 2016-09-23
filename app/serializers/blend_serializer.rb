# == Schema Information
#
# Table name: blends
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BlendSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :varietals
  has_many :wines
end
