class AddFeedBackToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :feedback, :text
  end
end
