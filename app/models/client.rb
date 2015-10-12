class Client < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :mystreets
  has_many :reservations

  def fullname
    "#{self.firstname}, #{self.lastname}"
  end

end
