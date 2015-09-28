class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :Description

      t.timestamps null: false
    end
  end
end
