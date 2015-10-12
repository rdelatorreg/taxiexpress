class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :brand_id
      t.integer :status_id
      t.string :model
      t.integer :year
      t.string :description
      t.references :driver, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
