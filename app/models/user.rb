class User < ActiveRecord::Base
    has_many :reservations
    has_one :documenttypes
end
