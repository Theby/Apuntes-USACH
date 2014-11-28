json.array!(@expositors) do |expositor|
  json.extract! expositor, :id, :nombre, :publicacion_id
  json.url expositor_url(expositor, format: :json)
end
