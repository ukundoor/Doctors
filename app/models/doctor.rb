
class Doctor < ActiveRecord::Base
  has_many :customers, :through => :appointment
  has_many :pets, :through => :appointment
  has_many :appointments
  validates :name, length: {maximum:35}, :presence=> true
  validates :zip, length: {maximum:5}
  validates :experinece, inclusion: {in: 1..100, message: "Invalid Experience"}
  
end
