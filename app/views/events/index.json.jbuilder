json.array!(@events) do |event|
  json.extract! event, :id, :owner, :console, :players, :category_id, :title, :description, :image, :start_time
  json.url event_url(event, format: :json)
end
