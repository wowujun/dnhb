json.array!(@sideproducts) do |sideproduct|
  json.extract! sideproduct, :id, :title, :image, :content
  json.url sideproduct_url(sideproduct, format: :json)
end
