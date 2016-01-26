json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :petName, :appointment_remainder, :visitPurpose
  json.url customer_url(customer, format: :json)
end
