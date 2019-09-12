class Playlist < ApplicationRecord
  belongs_to :user
  has_many :song
  validates :name, presence: true, uniqueness: true
end
