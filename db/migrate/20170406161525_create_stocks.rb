class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.date :date
      t.text :description
      t.integer :units
      t.integer :price
      t.belongs_to :customer,index: true
      t.belongs_to :company, index: true
      t.timestamps
    end
  end
end
