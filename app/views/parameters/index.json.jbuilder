json.array!(@parameters) do |parameter|
  json.extract! parameter, :id, :text, :value, :entity_id
  json.url parameter_url(parameter, format: :json)
end
