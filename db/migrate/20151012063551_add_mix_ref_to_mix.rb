class AddMixRefToMix < ActiveRecord::Migration
  def change
    add_reference :drivers, :vehicle, index: true
    add_reference :reservations, :driver, index: true
  end
end
