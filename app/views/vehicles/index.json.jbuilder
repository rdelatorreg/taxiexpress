json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :marca, :modelo, :placa, :codmodalidad, :codestado
  json.url vehicle_url(vehicle, format: :json)
end
