json.array!(@car_brands) do |car_brand|
  json.extract! car_brand, :id, :name
  json.url car_brand_url(car_brand, format: :json)
end
