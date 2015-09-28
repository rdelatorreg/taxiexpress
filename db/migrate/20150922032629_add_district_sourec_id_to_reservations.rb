class AddDistrictSourecIdToReservations < ActiveRecord::Migration
  def change
    add_column :users, :documenttypes_id, :integer
  end
end
