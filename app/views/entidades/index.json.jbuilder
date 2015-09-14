json.array!(@entidades) do |entidad|
  json.extract! entidad, :id, :Descripcion
  json.url entidad_url(entidad, format: :json)
end
