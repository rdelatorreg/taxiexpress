class RemoveMakeFromVehicles < ActiveRecord::Migration
  def change
    remove_column :vehicles, :make 
  end
end
