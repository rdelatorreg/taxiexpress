class CreateParametros < ActiveRecord::Migration
  def change
    create_table :parametros do |t|
      t.string :texto
      t.integer :valor
      t.references :entidad, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
