class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :petName
      t.string :appointment_remainder
      t.string :visitPurpose

      t.timestamps
    end
  end
end
