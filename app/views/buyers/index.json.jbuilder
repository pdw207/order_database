json.array!(@buyers) do |buyer|
  json.extract! buyer, :company, :contact_name, :contact_email, :contact_phone_1, :contact_phone_2, :shipping_address_line_1, :shipping_address_line_2, :factura_information, :special_instructions
  json.url buyer_url(buyer, format: :json)
end
