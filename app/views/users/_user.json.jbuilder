json.extract! user, :id, :name, :email, :cell_phone, :created_at, :updated_at
json.url user_url(user, format: :json)
