class RemoveSourceAddresFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :source_addres
    remove_column :reservations, :final_addres
  end
end
