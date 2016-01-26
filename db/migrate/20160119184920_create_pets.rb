class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :pet_type
      t.string :breed
      t.integer :age
      t.integer :weight
      t.datetime :lastVisitedDate
      t.references :Customer, index: true

      t.timestamps
    end
  end
end
