json.extract! hotel, :id, :name, :description, :location, :photo_id, :user_id, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)