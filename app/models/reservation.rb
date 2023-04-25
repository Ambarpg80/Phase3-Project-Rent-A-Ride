
class Reservation < ActiveRecord::Base
	belongs_to :vehicles

     def self.add_vid  #return a random vehicle id
        # binding.pry
        ran_num = Vehicle.all.map {|vehicle| vehicle.id}
        ran_num.sample(1)
    end

   
end

