class Address < ActiveRecord::Base
    belongs_to :reservations
    belongs_to :district
end
