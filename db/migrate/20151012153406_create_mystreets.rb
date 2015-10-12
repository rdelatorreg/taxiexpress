class CreateMystreets < ActiveRecord::Migration
  def change
    create_table :mystreets do |t|
      t.references :client
      t.references :district
      t.text :street

      t.timestamps null: false
    end
  end
end
