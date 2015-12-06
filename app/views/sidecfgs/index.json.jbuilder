json.array!(@sidecfgs) do |sidecfg|
  json.extract! sidecfg, :id, :company, :tel, :fax, :address, :dingyuhao
  json.url sidecfg_url(sidecfg, format: :json)
end
