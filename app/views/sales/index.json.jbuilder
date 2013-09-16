json.array!(@sales) do |sale|
  json.extract! sale, :amount, :date, :name, :export
  json.url sale_url(sale, format: :json)
end
