class User < ApplicationRecord
  validates_presence_of :name, :email, :password
  has_many :reviews
  has_many :notes
end
