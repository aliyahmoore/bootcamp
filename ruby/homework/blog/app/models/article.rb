class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    belongs_to :category # Remove the `optional: true` here
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    validates :category, presence: true # Ensures the category must be selected
  end
  