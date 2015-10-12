class Driver < ActiveRecord::Base
    has_many :cars
    
    def fullname
        "#{self.first_name} #{self.last_name} - #{license_number}"
    end
    
    def car_count
        self.cars.count
    end
    
end
