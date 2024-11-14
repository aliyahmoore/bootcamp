class Category < ApplicationRecord
    has_many :articles
    validates :name, uniqueness: true, presence: true
end
