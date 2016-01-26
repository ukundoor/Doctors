json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :next_appointment_date, :visit_purpose, :Pet_id, :Customer_id, :Doctor_id
  json.url appointment_url(appointment, format: :json)
end
