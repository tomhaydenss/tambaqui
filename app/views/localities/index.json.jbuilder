json.array!(@localities) do |locality|
  json.extract! locality, :id, :code, :description
  json.url locality_url(locality, format: :json)
end
