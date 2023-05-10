class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # show all vehicles
  get "/vehicles" do
    vehicles = Vehicle.all
    vehicles.to_json(include: :reservations)
  end

  #show reservations
  get "/vehicles/reservations" do
    reservation = Reservation.all
    reservation.to_json
  end

  #post new reservation
  post "/vehicles/reservations" do
    reserve = Reservation.create(
              vehicle_id: params[:vehicle_id],
              full_name: params[:full_name],
              driving_license: params[:driving_license],
              payment_method: params[:payment_method]
    )
    # reserve = Reservation.create(params)
    reserve.to_json
  end

  #update reservation
  patch "/vehicles/reservations/:id" do
    vehicle = Reservation.find(params[:id])
    vehicle.update(vehicle_id: params[:vehicle_id],
                    full_name: params[:full_name],
                    driving_license: params[:driving_license],
                    payment_method: params[:payment_method]
    )
    vehicle.to_json
  end

  #delete reservation
  delete "/vehicles/reservations/:id" do
    vehicles = Reservation.find(params[:id])
    vehicles.destroy
    vehicles.to_json
  end

end
