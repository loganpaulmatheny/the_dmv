class Facility
  attr_reader :name, :address, :phone, :services, :collected_fees, :registered_vehicles

  def initialize(details)
    @name = details[:name] || details[:dmv_office]
    @address = details[:address] || details[:address_li]
    @phone = details[:phone]
    @services = details[:services_p].split(",") || []
    @collected_fees = 0
    @registered_vehicles = []
  end

  def add_service(service)
    @services << service
  end

  def register_vehicle(vehicle)
    if @services.include?("Vehicle Registration") || @services.include?("registration")
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
      @registered_vehicles << vehicle
    end
    vehicle.set_registration_date
  end

  def administer_written_test(registrant)
    if @services.include?("Written Test") && registrant.age >=16 && registrant.permit == true
      registrant.license_data[:written] = true
      return true
    end 
    return false
  end 

  def administer_road_test(registrant)
    if @services.include?("Road Test") && registrant.license_data[:written] == true && registrant.permit == true
      registrant.license_data[:license] = true
      return true
    end
    return false
  end 

  def renew_drivers_license(registrant)
    if (@services.include?("Renew License") || @services.include?("renewals")) && registrant.license_data[:written] == true && registrant.license_data[:license] == true
      registrant.license_data[:renewed] = true
      return true
    end 
    return false
  end 
end
