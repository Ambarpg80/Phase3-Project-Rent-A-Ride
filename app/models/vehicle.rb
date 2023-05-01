class Vehicle < ActiveRecord::Base 
    has_many :reservations
   
  def self.is_reserved?(id) #return whether vehicle id is present in reservations
    reserved_list = Reservation.all.map { |reserved| 
      reserved.vehicle_id }
    reserved_list.include?(id)
  end

  
     
end