json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :Nombres, :ApPaterno, :ApMaterno, :Nick, :Contrasena
  json.url usuario_url(usuario, format: :json)
end
