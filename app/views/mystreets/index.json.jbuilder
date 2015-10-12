json.array!(@mystreets) do |mystreet|
  json.extract! mystreet, :id, :district_id, :street
  json.url mystreet_url(mystreet, format: :json)
end
