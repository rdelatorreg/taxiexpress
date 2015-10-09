class Vehicle < ActiveRecord::Base
  belongs_to :car_brand
  
  def car_brand_name
      self.car_brand.name
  end  
end
