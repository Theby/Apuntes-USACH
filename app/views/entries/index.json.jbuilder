json.array!(@entries) do |entry|
  json.extract! entry, :id, :fecha, :linkMD, :publicacion_id, :nombre, :entry_anterior_id
  json.url entry_url(entry, format: :json)
end
