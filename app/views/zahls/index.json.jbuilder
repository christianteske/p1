json.array!(@zahls) do |zahl|
  json.extract! zahl, :id, :zahl
  json.url zahl_url(zahl, format: :json)
end
