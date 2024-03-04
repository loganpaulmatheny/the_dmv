require 'date'

class Vehicle
  attr_reader :vin,
              :year,
              :make,
              :model,
              :engine, 
              :registration_date,
              :plate_type

  def initialize(vehicle_details)
    @vin = vehicle_details[:vin] || vehicle_details[:vin_1_10]
    @year = vehicle_details[:year] || vehicle_details[:model_year]
    @make = vehicle_details[:make]
    @model = vehicle_details[:model]
    @engine = vehicle_details[:engine]
    @registration_date = nil
    @plate_type = nil
  end

  def antique?
    Date.today.year - @year > 25
  end

  def electric_vehicle?
    @engine == :ev
  end

  def plate_type=(type)
    @plate_type = type
  end 

  def set_registration_date
    @registration_date = DateTime.now
  end 

  def set_engine(type)
    @engine = type
  end 
end
