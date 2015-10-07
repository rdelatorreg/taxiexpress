json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :make, :model, :fabrication_year, :color, :serial_number, :car_brand_id
  json.url vehicle_url(vehicle, format: :json)
end
