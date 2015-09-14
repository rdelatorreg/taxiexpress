json.array!(@parametros) do |parametro|
  json.extract! parametro, :id, :texto, :valor, :entidad_id
  json.url parametro_url(parametro, format: :json)
end
