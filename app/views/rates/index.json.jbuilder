json.array!(@rates) do |rate|
  json.extract! rate, :id, :price, :origin_id, :destination_id
  json.url rate_url(rate, format: :json)
end
