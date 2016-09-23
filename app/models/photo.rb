class Photo < ApplicationRecord
  belongs_to :soda
  belongs_to :user

  has_attached_file :photo

  validates_inclusion_of :is_private, in: [true, false]
  validates_attachment :photo, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
