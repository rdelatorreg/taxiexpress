class AddDistrictSourecIdToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :districtsource_id, :integer
    add_column :reservations, :districtfinal_id, :integer
  end
end
