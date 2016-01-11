json.array!(@classcas) do |classca|
  json.extract! classca, :id, :title, :image, :content, :time
  json.url classca_url(classca, format: :json)
end
