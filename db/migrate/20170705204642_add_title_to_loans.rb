class AddTitleToLoans < ActiveRecord::Migration[5.1]
  def change
    add_column :loans, :title, :string
  end
end
