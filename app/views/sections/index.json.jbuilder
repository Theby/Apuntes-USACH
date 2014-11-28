json.array!(@sections) do |section|
  json.extract! section, :id, :nombre
  json.url section_url(section, format: :json)
end
