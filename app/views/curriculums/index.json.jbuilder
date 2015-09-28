json.array!(@curriculums) do |curriculum|
  json.extract! curriculum, :id, :name, :description
  json.url curriculum_url(curriculum, format: :json)
end
