class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
# ================= READ AND UPDATE VEHICLE ========================

  # show all vehicles
  get "/vehicles" do
    vehicles = Vehicle.all
    vehicles.to_json(include: :reservations)
  end 

  post "/vehicles" do
    new_vehicle = Vehicle.create(
              vin: params[:vin],
              car_type: params[:car_type],
              make_and_model: params[:make_and_model],
              license_plate: params[:license_plate],
              reserved: params[:reserved]
    )
    new_vehicle.to_json
  end
  
  #update vehicle to show it's reserved
  patch "/vehicles/:id" do
    vehicle = Vehicle.find(params[:id])
    vehicle.update(reserved: params[:reserved])
    vehicle.to_json
  end

# ======================= CRUD FOR RESERVATION ===========================

  #show reservations
  get "/vehicles/reservations" do
    reserved = Reservation.all
    reserved.to_json
  end

  #post new reservation
  post "/vehicles/reservations" do
    reserved = Reservation.create(
              vehicle_id: params[:vehicle_id],
              full_name: params[:full_name],
              driving_license: params[:driving_license],
              payment_method: params[:payment_method]
    )
    reserved.to_json
  end

  #update reservation
  patch "/vehicles/reservations/:id" do
    reserved = Reservation.find(params[:id])
    reserved.update(vehicle_id: params[:vehicle_id],
                    full_name: params[:full_name],
                    driving_license: params[:driving_license],
                    payment_method: params[:payment_method]
    )
    reserved.to_json
  end

  #delete reservation
  delete "/vehicles/reservations/:id" do
    reserved = Reservation.find(params[:id])
    reserved.destroy
    reserved.to_json
  end

end
