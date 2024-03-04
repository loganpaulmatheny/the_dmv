require_relative 'vehicle'

class VehicleFactory 
  attr_reader :vehicles

  def initialize
    @created_vehicles = []
  end 

  def create_vehicles(registered_vehicles)
    @created_vehicles = registered_vehicles.map do |vehicle|
      added_vehicle = Vehicle.new(vehicle)
      if vehicle[:electric_vehicle_type]
        added_vehicle.engine(:ev)
      end
      added_vehicle
    end 
  end 
end