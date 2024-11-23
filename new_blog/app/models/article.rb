class Article < ApplicationRecord
  has_many :comments
  belongs_to :category, optional: false
  belongs_to :author
  validates :title, presence: true
  validates :author, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
