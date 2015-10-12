class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.decimal :price
      t.integer :origin_id
      t.integer :destination_id
      t.timestamps null: false
    end
  end
end
