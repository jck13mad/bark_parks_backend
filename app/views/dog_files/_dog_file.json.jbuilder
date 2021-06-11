json.extract! dog_file, :id, :name, :user_id, :sex, :weight, :age, :breed, :created_at, :updated_at
json.url dog_file_url(dog_file, format: :json)
