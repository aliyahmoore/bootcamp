class Author < ApplicationRecord
  has_many :articles

  validates :name, presence: true
  validates :bio, presence: true
end
