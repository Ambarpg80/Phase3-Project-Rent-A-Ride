
class Reservation < ActiveRecord::Base
	belongs_to :vehicles

     def self.add_vid  #return a random vehicle id
         ran_num = Vehicle.all.map {|car| car.id}
         #returns vehicle id for each vehicle
          Reservation.all.map { |reserved| 
            reserved.update(vehicle_id: ran_num.sample) }
            # picks a random number from ran_num array of vehicle id's
        # end
    end

   
   
end

