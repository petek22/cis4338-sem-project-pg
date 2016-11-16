class CreateWorkers < ActiveRecord::Migration[5.0]
  def change
    create_table :workers do |t|
      t.string :name, :null => false
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.float :payrate
      t.boolean :archive, :null => false, :default => false


      t.timestamps
    end
  end
end
