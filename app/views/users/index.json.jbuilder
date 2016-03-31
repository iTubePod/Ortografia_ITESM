json.array!(@users) do |user|
  json.extract! user, :id, :matricula, :name, :last_name, :pass, :isProfessor
  json.url user_url(user, format: :json)
end
