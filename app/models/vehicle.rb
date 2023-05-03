class Vehicle < ActiveRecord::Base 
    has_many :reservations
   
  def self.is_reserved?(id) #return whether vehicle id is present in reservations  
    car = Vehicle.where(id: id)
    Reservation.exists?(vehicles_id: car.ids)  
  end
    
end