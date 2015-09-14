class CreateEntidades < ActiveRecord::Migration
  def change
    create_table :entidades do |t|
      t.string :Descripcion

      t.timestamps null: false
    end
  end
end
