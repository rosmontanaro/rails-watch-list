class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :boomkmarks

  validates :title, :overview, presence: true
end
