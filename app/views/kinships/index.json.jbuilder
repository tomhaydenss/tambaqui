json.array!(@kinships) do |kinship|
  json.extract! kinship, :id, :description
  json.url kinship_url(kinship, format: :json)
end
