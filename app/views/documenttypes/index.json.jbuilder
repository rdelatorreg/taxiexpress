json.array!(@documenttypes) do |documenttype|
  json.extract! documenttype, :id, :name
  json.url documenttype_url(documenttype, format: :json)
end
