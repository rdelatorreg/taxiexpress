json.array!(@useres) do |user|
  json.extract! user, :id, :name, :last_name, :nick, :password, :phone, :identification_number, :emai
  json.url user_url(user, format: :json)
end
