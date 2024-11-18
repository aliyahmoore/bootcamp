class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    belongs_to :category, optional: false
    belongs_to :author
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    validates :category, presence: true # Ensures the category must be selected
    validates :author, presence: true 
  end
  