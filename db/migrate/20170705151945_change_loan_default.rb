class ChangeLoanDefault < ActiveRecord::Migration[5.1]
  def change
    change_column_default :loans, :status, 'pending'
  end
end
