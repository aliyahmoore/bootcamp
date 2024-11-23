class Author < ApplicationRecord
  has_many :articles
  belongs_to :articles, optional: true

  validates :name, presence: true
  validates :bio, presence: true
end
