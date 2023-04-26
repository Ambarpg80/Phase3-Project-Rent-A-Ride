
class Reservation < ActiveRecord::Base
	belongs_to :vehicles

     def self.add_vid  #return a random vehicle id
         ran_num = Vehicle.all.map {|vehicle| vehicle.id}
         self.all.map {|reserved| reserved.update(vehicle_id: ran_num.sample) }
    end

   
   
end

