class RemovedistrictsourceIdFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :districtsource_id
    remove_column :reservations, :districtfinal_id
  end
end
