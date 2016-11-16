class CreateDocks < ActiveRecord::Migration[5.0]
  def change
    create_table :docks do |t|
      t.string :name, :null => false
      t.boolean :available
      t.boolean :archive, :null => false, :default => false


      t.timestamps
    end
  end
end
