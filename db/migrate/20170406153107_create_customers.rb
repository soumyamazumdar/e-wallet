class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :lname
      t.string :mname
      t.string :fname
      t.date :dob
      t.text :add
      t.string :city
      t.string :state
      t.string :email

      t.timestamps
    end
  end
end
