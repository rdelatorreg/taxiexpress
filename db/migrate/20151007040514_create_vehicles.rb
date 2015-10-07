class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.integer :fabrication_year
      t.string :color
      t.string :serial_number
      t.references :car_brand, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
