class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :district_id
      t.string :flag
      t.integer :reservation_id

      t.timestamps null: false
    end
  end
end
