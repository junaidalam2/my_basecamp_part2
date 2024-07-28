json.extract! user, :id, :first_name, :last_name, :position, :department, :profile, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
