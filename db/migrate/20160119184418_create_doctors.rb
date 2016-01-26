class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :degree_obtained_from
      t.integer :experinece

      t.timestamps
    end
  end
end
