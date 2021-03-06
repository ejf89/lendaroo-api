class CreateUserBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :user_books do |t|
      t.integer :book_id
      t.integer :user_id
      t.boolean :on_loan, default: :false
      t.timestamps
    end
  end
end
