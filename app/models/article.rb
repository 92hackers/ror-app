class Article < ApplicationRecord
  include Visible

  has_many :comments # Relationship with Comment model

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
