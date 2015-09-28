class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :marca
      t.text :modelo
      t.text :placa
      t.integer :codmodalidad
      t.integer :codestado

      t.timestamps null: false
    end
  end
end
