class Mystreet < ActiveRecord::Base
    belongs_to :client
    belongs_to :district
    
    validates :district_id, presence: true
    validates :street, presence: true
    
    def district_name
        self.district.name 
    end
    
end
