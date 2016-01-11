json.array!(@sideshixts) do |sideshixt|
  json.extract! sideshixt, :id, :title, :date, :content
  json.url sideshixt_url(sideshixt, format: :json)
end
