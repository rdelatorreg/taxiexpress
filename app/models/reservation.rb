class Reservation < ActiveRecord::Base
  belongs_to :client
end
