class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.integer :num
      t.references :callable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
