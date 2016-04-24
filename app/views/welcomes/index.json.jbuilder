json.array!(@welcomes) do |welcome|
  json.extract! welcome, :id, :name, :message
  json.url welcome_url(welcome, format: :json)
end
