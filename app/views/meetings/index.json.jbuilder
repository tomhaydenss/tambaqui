json.array!(@meetings) do |meeting|
  json.extract! meeting, :id, :description, :date, :start_at, :end_at, :location, :group_id
  json.url meeting_url(meeting, format: :json)
end
