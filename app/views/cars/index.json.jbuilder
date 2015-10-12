json.array!(@cars) do |car|
  json.extract! car, :id, :brand_id, :status_id, :model, :year, :description, :driver_id
  json.url car_url(car, format: :json)
end
