class CreateVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors do |t|
      t.string :name , :null => false
      t.boolean :archive, :null => false, :default => false


      t.timestamps
    end
  end
end
