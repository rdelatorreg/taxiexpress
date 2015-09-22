class CreateParameters < ActiveRecord::Migration
  def change
    create_table :parameters do |t|
      t.string :text
      t.integer :value
      t.references :entity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
