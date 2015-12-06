json.array!(@sideabouts) do |sideabout|
  json.extract! sideabout, :id, :about, :culture, :qualification, :concept, :speech
  json.url sideabout_url(sideabout, format: :json)
end
