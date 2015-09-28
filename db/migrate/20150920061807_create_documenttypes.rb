class CreateDocumenttypes < ActiveRecord::Migration
  def change
    create_table :documenttypes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
