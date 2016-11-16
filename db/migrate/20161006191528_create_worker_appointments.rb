class CreateWorkerAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :worker_appointments do |t|
      t.integer :worker_id , :null => false
      t.integer :appointment_id , :null => false

      t.timestamps
    end
  end
end
