json.array!(@parents) do |parent|
  json.extract! parent, :id, :name, :kinship_id
  json.url parent_url(parent, format: :json)
end
