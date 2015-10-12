class District < ActiveRecord::Base
  has_many :destinos, class_name: 'Rate', primary_key: 'id', foreign_key: 'destination_id'
  has_many :origenes, class_name: 'Rate', primary_key: 'id', foreign_key: 'origin_id'
end
