json.extract! event, :id, :name, :description, :capacity, :price, :starts_at, :created_at, :updated_at
json.url event_url(event, format: :json)
