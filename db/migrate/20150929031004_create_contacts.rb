class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :message
      t.string :email
      t.string :body

      t.timestamps null: false
    end
  end
end
