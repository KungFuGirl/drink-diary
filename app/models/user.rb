class User < ApplicationRecord
  validates_presence_of :name, :email, :password
  has_many :reviews
  has_many :notes
  has_many :created_sodas, :class_name => 'Soda', :foreign_key => 'creator_id'
  has_many :last_edited_sodas, :class_name => 'Soda', :foreign_key => 'last_editor_id'
  has_many :photos
end
