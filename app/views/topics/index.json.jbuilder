json.array!(@topics) do |topic|
  json.extract! topic, :id, :title, :name, :content
  json.url topic_url(topic, format: :json)
end
