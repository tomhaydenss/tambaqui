json.array!(@attendances) do |attendance|
  json.extract! attendance, :id, :meeting_id, :member_id, :attendee
  json.url attendance_url(attendance, format: :json)
end
