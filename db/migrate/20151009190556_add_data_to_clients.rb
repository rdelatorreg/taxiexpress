class AddDataToClients < ActiveRecord::Migration
  def change
    add_column :clients, :firstname, :string
    add_column :clients, :lastname, :string
    add_column :clients, :documenttype, :integer
    add_column :clients, :documentnumber, :integer
    add_column :clients, :address, :text
    add_column :clients, :birthdate, :date
  end
end
