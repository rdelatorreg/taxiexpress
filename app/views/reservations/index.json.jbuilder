json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :source_addres, :final_addres, :user_id
  json.url reservation_url(reservation, format: :json)
end
