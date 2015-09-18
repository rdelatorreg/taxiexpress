class CreateUseres < ActiveRecord::Migration
  def change
    create_table :useres do |t|
      t.string :name
      t.string :last_name
      t.string :nick
      t.string :password
      t.integer :phone
      t.integer :identification_number
      t.string :emai

      t.timestamps null: false
    end
  end
end
