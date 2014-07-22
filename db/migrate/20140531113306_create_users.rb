class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email_address
      t.string :registered_on
      t.string :salt
      t.string :password
      t.string :confirm_password
      t.string :hashed_password
      t.text :status_update

      t.timestamps
    end
  end
end
