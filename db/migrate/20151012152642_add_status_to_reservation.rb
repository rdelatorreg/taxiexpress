class AddStatusToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :status_id, :integer
    add_column :reservations, :saved_origin_id, :integer
    add_column :reservations, :saved_destinaion_id, :integer
  end
end
