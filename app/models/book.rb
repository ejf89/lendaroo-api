class Book < ApplicationRecord
  validates :title, uniqueness: true
  has_many :user_books
  has_many :users, through: :user_books
  has_many :loans
end
