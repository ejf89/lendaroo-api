class Loan < ApplicationRecord
  #belongs_to :users
  #belongs_to :books

  belongs_to :giver, class_name: 'User', foreign_key: 'giver_id'
  belongs_to :taker, class_name: 'User',foreign_key: 'taker_id'
  belongs_to :book
end
