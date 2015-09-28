json.array!(@entities) do |entity|
  json.extract! entity, :id, :Description
  json.url entity_url(entity, format: :json)
end
