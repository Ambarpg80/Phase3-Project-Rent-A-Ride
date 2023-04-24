class Reservation < ActiveRecord::Base
	belongs_to :vehicles

    def vehicle_id
        vehicles.rand(:id)
    end

   
end
