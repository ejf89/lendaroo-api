class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :bio
      t.string :picture, default: "/Users/ericfarber/Development/Projects/Lendaroo/lendr_api/app/assets/images/smiley.jpg"
      t.string :home_location
      t.timestamps

    end
  end
end
