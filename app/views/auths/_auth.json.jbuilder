json.extract! auth, :id, :login, :password, :created_at, :updated_at
json.url auth_url(auth, format: :json)
