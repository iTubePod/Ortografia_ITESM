json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :chapter, :instruction, :desc, :attachments, :user_id, :course_id
  json.url activity_url(activity, format: :json)
end
