class Soda < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  belongs_to :last_editor, class_name: 'User'
  belongs_to :country
  has_many :photos
  has_and_belongs_to_many :flavors
  has_and_belongs_to_many :ingredients
  has_and_belongs_to_many :notes
  before_save :downcase_hex
  
  # only allow 6 digit hex colors
  validates :color, format: { with: /[a-f\d]{6}/i, message: "must be a hex number" }

  def downcase_hex
    return self.color.downcase!
  end

end
