class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :source_addres
      t.string :final_addres
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
