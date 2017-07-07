class User < ApplicationRecord
  has_secure_password
  geocoded_by :address
  after_validation :geocode

  has_many :user_books
  has_many :books, through: :user_books
  has_many :loans
end
