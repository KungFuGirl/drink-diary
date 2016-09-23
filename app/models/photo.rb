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
# Indexes
#
#  index_photos_on_soda_id  (soda_id)
#  index_photos_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_c79d76afc0  (user_id => users.id)
#  fk_rails_e8947d77fc  (soda_id => sodas.id)
#

class Photo < ApplicationRecord
  belongs_to :soda
  belongs_to :user

  has_attached_file :photo

  validates_inclusion_of :is_private, in: [true, false]
  validates_attachment :photo, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
