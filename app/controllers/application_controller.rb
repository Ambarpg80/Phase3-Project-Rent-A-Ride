class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/vehicles" do
    vehicles = Vehicle.all
    vehicles.to_json(include: :reservations)
  end

  get "/vehicles/reservations" do
    reservation = Reservation.all
    reservation.to_json
  end

  #post 
  get "/vehicles/reservations" do
    reserve = Reservation.create(
              full_name: params[:full_name],
              driving_license: params[:driving_license],
              payment_method: params[:payment_method],
              vehicle_id: params[:vehicle_id]
    )
    # reserve = Reservation.create(params)
    reserve.to_json
  end

  #update
  get "/vehicles/reservations/:id" do
    vehicle = Reservation.find(params[:id])
    vehicle.update
  end

  #delete
  get "/vehicles/reservations/:id" do
    vehicles = Vehicle.find(params[:id])
    vehicles.destroy
  end

end
