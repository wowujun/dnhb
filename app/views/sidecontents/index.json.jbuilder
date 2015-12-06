json.array!(@sidecontents) do |sidecontent|
  json.extract! sidecontent, :id, :title, :date, :content
  json.url sidecontent_url(sidecontent, format: :json)
end
