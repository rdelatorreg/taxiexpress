class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :Nombres
      t.string :ApPaterno
      t.string :ApMaterno
      t.string :Nick
      t.string :Contrasena

      t.timestamps null: false
    end
  end
end
