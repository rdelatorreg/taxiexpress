class CreateGaleries < ActiveRecord::Migration
  def change
    create_table :galeries do |t|
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
