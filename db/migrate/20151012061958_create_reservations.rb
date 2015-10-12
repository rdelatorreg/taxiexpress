class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :origin_id
      t.integer :destination_id
      t.datetime :pickuptime
      t.text :origin_street
      t.text :destination_street
      t.decimal :price
      t.decimal :igv
      t.decimal :totalprice
      t.integer :qualification
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
