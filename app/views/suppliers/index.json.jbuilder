json.array!(@suppliers) do |supplier|
  json.extract! supplier, :name, :phone, :address1, :address2, :address3, :contact_name, :email, :type, :notes
  json.url supplier_url(supplier, format: :json)
end
