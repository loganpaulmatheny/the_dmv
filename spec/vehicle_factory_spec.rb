require 'spec_helper'

RSpec.describe VehicleFactory do
  before(:each) do
    @factory = VehicleFactory.new
    @wa_ev_registrations = [{:electric_vehicle_type=>"Battery Electric Vehicle (BEV)",
    :vin_1_10=>"5YJ3E1EA7J",
    :dol_vehicle_id=>"231013436",
    :model_year=>"2018",
    :make=>"TESLA",
    :model=>"Model 3",
    :vehicle_primary_use=>"Passenger",
    :electric_range=>"215",
    :odometer_reading=>"0",
    :odometer_code=>"Odometer reading is not collected at time of renewal",
    :new_or_used_vehicle=>"Used",
    :sale_price=>"0",
    :base_msrp=>"0",
    :transaction_type=>"Registration Renewal",
    :transaction_date=>"2023-02-21T00:00:00.000",
    :transaction_year=>"2023",
    :county=>"King",
    :city=>"KIRKLAND",
    :state_of_residence=>"WA",
    :zip=>"98033",
    :meets_2019_hb_2042_sale_price_value_requirement=>false,
    :_2019_hb_2042_sale_price_value_requirement=>
     "This transaction type is not eligible for the tax exemption",
    :electric_vehicle_fee_paid=>"Yes",
    :transportation_electrification_fee_paid=>"Yes",
    :hybrid_vehicle_electrification_fee_paid=>"No",
    :census_tract_2020=>"53033022603",
    :legislative_district=>"48",
    :electric_utility=>"PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)"},
   {:electric_vehicle_type=>"Battery Electric Vehicle (BEV)",
    :vin_1_10=>"5YJXCDE23H",
    :dol_vehicle_id=>"149021127",
    :model_year=>"2017",
    :make=>"TESLA",
    :model=>"Model X",
    :vehicle_primary_use=>"Passenger",
    :electric_range=>"200",
    :odometer_reading=>"0",
    :odometer_code=>"Odometer reading is not collected at time of renewal",
    :new_or_used_vehicle=>"Used",
    :sale_price=>"0",
    :base_msrp=>"0",
    :transaction_type=>"Registration Renewal",
    :transaction_date=>"2024-01-23T00:00:00.000",
    :transaction_year=>"2024",
    :county=>"King",
    :city=>"KIRKLAND",
    :state_of_residence=>"WA",
    :zip=>"98033",
    :meets_2019_hb_2042_sale_price_value_requirement=>false,
    :_2019_hb_2042_sale_price_value_requirement=>
     "This transaction type is not eligible for the tax exemption",
    :electric_vehicle_fee_paid=>"Yes",
    :transportation_electrification_fee_paid=>"Yes",
    :hybrid_vehicle_electrification_fee_paid=>"No",
    :census_tract_2020=>"53033022603",
    :legislative_district=>"48",
    :electric_utility=>"PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)"}]
  end

  describe '#create_vehicles' do 
    it 'creates an array of vehicles' do 
      vehicles = @factory.create_vehicles(@wa_ev_registrations)
      expect(vehicles.length).to eq(2)
    end 
  end 

end