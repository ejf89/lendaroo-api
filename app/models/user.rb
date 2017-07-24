class User < ApplicationRecord
  has_secure_password
  geocoded_by :address
  after_validation :geocode
  validate :has_pic?

  has_many :user_books
  has_many :books, through: :user_books
  has_many :loans

  def has_pic?
    if self.picture.empty?
      self.picture = "../smiley.png"
    end
  end

  def to_param
    username
  end


end
