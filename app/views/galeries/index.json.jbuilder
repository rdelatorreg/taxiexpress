json.array!(@galeries) do |galery|
  json.extract! galery, :id, :title, :description
  json.url galery_url(galery, format: :json)
end
