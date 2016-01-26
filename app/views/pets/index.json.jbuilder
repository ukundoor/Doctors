json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :pet_type, :breed, :age, :weight, :lastVisitedDate, :Customer_id
  json.url pet_url(pet, format: :json)
end
