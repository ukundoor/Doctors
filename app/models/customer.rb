class Customer < ActiveRecord::Base
  has_many :doctors, :through=>  :appointment
  has_many :pets
  has_many :appointments
  validates :name, :presence => true
end