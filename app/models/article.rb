class Article < ApplicationRecord
  include Visible

  # Relationship with Comment model
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
