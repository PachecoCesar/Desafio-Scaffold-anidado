class User < ApplicationRecord
  has_many :playlist
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
