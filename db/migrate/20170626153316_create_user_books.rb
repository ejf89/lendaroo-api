class CreateUserBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :user_books do |t|
      t.integer :bookId
      t.integer :userId
      t.timestamps
    end
  end
end
