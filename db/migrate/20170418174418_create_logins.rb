class CreateLogins < ActiveRecord::Migration[5.0]
  def change
    create_table :logins do |t|
      t.string :name
      t.string :email
      t.string :encrypted_password
      t.string :salt
      t.timestamps
    end
  end
end
