class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :next_appointment_date
      t.string :visit_purpose
      t.references :Pet, index: true
      t.references :Customer, index: true
      t.references :Doctor, index: true

      t.timestamps
    end
  end
end
