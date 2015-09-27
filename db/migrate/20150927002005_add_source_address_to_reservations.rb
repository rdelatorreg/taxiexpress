class AddSourceAddressToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :source_address, :string
    add_column :reservations, :final_address, :string
  end
end
