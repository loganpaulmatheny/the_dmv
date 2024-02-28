class Facility
  attr_reader :name, :address, :phone, :services

  def initialize(details)
    @name = details[:name]
    @address = details[:address]
    @phone = details[:phone]
    @services = []
    @collected_fees = 0
  end

  def add_service(service)
    @services << service
  end

  def register_vehicle(vehicle)
    if @services.include?("Vehicle Registration")
      if vehicle.antique?
        vehicle.plate_type = :antique
        @collected_fees += 25
      elsif vehicle.electric_vehicle?
        vehicle.plate_type = :ev
        @collected_fees += 200
      else
        vehicle.plate_type = :regular
        @collected_fees += 100
      end
    end
  end
end
