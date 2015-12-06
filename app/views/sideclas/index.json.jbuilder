json.array!(@sideclas) do |sidecla|
  json.extract! sidecla, :id, :name
  json.url sidecla_url(sidecla, format: :json)
end
