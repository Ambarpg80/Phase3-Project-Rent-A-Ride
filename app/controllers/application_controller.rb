class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/vehicles" do
    vehicles = Vehicle.all
    vehicles.to_json
  end

  get "/reservations" do
    reservation = Reservation.all
    reservation.to_json
  end

  #post 
  get "/reservations" do
    reservation = Reservation.create(
              full_name: params[:full_name],
              driving_license: params[:driving_license],
              payment_method: params[:payment_method],
              vehicle_id: params[:vehicle_id]
    )
    reservation.to_json
  end

  #update
  get "/reservations/:id" do
    vehicle = Reservation.find(params[:id])
    vehicle.update
  end

  #delete
  get "/reservations/:id" do
    vehicles = Vehicle.find(params[:id])
    vehicles.destroy
  end

end
