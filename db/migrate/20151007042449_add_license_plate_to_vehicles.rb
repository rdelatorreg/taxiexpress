class AddLicensePlateToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :license_plate, :string
  end
end
