class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.integer :giver_id
      t.integer :taker_id
      t.integer :book_id
      t.string :status
      t.timestamps
    end
  end
end
