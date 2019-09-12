class Playlist < ApplicationRecord
  belongs_to :user
  has_many :song, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
