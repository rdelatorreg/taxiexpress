json.array!(@clients) do |client|
  json.extract! client, :id, :firstname, :lastname, :documenttype, :documentnumber, :address, :birthdate
  json.url client_url(client, format: :json)
end
