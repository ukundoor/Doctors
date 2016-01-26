class Pet < ActiveRecord::Base
  has_many:doctors, :through=>"appointment"
  belongs_to :Customer
  has_many :"appointments"
  validates :breed, :age, :weight, :presence=>true
  validates :pet_type, inclusion: {in: %w(dog cat bird), message: " %{value} is invalid pet"}
  
end
