class Reservation < ActiveRecord::Base
  belongs_to :user
  has_many :address
  has_many :district, through: :address
end
