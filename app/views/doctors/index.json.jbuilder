json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :address, :city, :state, :zip, :degree_obtained_from, :experinece
  json.url doctor_url(doctor, format: :json)
end
