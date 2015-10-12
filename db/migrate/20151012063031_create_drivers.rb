class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.string :license_number
      t.string :email

      t.timestamps null: false
    end
  end
end
