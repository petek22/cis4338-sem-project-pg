class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.date :start_date
      t.string :start_time
      t.integer :dock_id
      t.integer :vendor_id
      t.boolean :archive, :default => false

      t.timestamps
    end
  end
end
