class District < ActiveRecord::Base
    has_many :address
    has_many :reservation
end
