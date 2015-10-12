class Car < ActiveRecord::Base
  belongs_to :driver
  
  def brand_name
    Parameter.where(:value=> self.brand_id, :entity_id=> 4).first.text
  end
  
  def status_name
      Parameter.where(:value=> self.status_id, :entity_id=> 5).first.text
  end
  
end
