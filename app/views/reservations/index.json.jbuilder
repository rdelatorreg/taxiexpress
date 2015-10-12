json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :origin_id, :destination_id, :pickuptime, :origin_street, :destination_street, :price, :qualification, :client_id
  json.url reservation_url(reservation, format: :json)
end
