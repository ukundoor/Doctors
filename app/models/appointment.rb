
class Appointment < ActiveRecord::Base
  belongs_to :Pet
  belongs_to :Customer
  belongs_to :Doctor
end
