class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
