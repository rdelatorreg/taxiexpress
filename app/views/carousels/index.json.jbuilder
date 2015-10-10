json.array!(@carousels) do |carousel|
  json.extract! carousel, :id, :name
  json.url carousel_url(carousel, format: :json)
end
