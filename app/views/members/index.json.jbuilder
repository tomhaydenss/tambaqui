json.array!(@members) do |member|
  json.extract! member, :id, :code, :name, :birthdate, :status, :locality_id, :group_id
  json.url member_url(member, format: :json)
end
