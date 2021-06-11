json.extract! user, :id, :name, :user_id, :sex, :weight, :age, :breed, :created_at, :updated_at
json.url user_url(user, format: :json)
