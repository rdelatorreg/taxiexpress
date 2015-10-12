json.array!(@drivers) do |driver|
  json.extract! driver, :id, :first_name, :last_name, :birth_date, :license_number, :email
  json.url driver_url(driver, format: :json)
end
