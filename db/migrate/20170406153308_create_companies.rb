class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :add
      t.string :city
      t.string :state
      t.string :email

      t.timestamps
    end
  end
end
