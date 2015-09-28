class RemovesourceAddressFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :source_address
    remove_column :reservations, :final_address
  end
end
