class CreateWorkwithus < ActiveRecord::Migration
  def change
    create_table :workwithus do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :license_number

      t.timestamps null: false
    end
  end
end
