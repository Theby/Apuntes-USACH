json.array!(@publicacions) do |publicacion|
  json.extract! publicacion, :id, :nombre, :year, :semestre, :section_id, :linkMD, :siglas
  json.url publicacion_url(publicacion, format: :json)
end
