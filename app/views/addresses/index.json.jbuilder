json.array!(@addresses) do |address|
  json.extract! address, :id, :description, :zip_code, :street_name, :street_number, :additional_information, :city, :state
  json.url address_url(address, format: :json)
end
