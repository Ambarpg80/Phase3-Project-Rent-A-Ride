class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/reservations" do
    vehicles = Vehicle.all
    vehicles.to_json
  end

  #post 
  get "/reservations" do
    vehicles = Vehicle.create()
    vehicles.to_json
  end

  #update
  get "/reservations/:id" do
    vehicle = Vehicle.find(params[:id])
    vehicle.update
  end

  #delete
  get "/reservations/:id" do
    vehicles = Vehicle.find(params[:id])
    vehicles.destroy
  end

end
