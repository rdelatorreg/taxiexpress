class DropTableUsers < ActiveRecord::Migration
  def change
    drop_table :reservations
    drop_table :users
  end
end
