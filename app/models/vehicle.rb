class Vehicle < ActiveRecord::Base 
    has_many :reservations
   
     def self.is_reserved?  #return whether vehicle id is present in reseravtions
     reserve = Reservation.all.map {|reserved| reserved.vehicle_id}  
         self.all.map do |vehicle| 
            reserve.include?(vehicle.id) 
         end
     end
end