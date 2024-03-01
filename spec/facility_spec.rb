require 'spec_helper'

RSpec.describe Facility do
  before(:each) do
    @facility = Facility.new({name: 'DMV Tremont Branch', address: '2855 Tremont Place Suite 118 Denver CO 80205', phone: '(720) 865-4600'})
  end
  describe '#initialize' do
    it 'can initialize' do
      expect(@facility).to be_an_instance_of(Facility)
      expect(@facility.name).to eq('DMV Tremont Branch')
      expect(@facility.address).to eq('2855 Tremont Place Suite 118 Denver CO 80205')
      expect(@facility.phone).to eq('(720) 865-4600')
      expect(@facility.services).to eq([])
    end
  end

  describe '#add service' do
    it 'can add available services' do
      expect(@facility.services).to eq([])
      @facility.add_service('New Drivers License')
      @facility.add_service('Renew Drivers License')
      @facility.add_service('Vehicle Registration')
      expect(@facility.services).to eq(['New Drivers License', 'Renew Drivers License', 'Vehicle Registration'])
    end
  end

  describe '#register_vehicle' do 
    it 'can change plate types' do 
      camaro = Vehicle.new({vin: '1a2b3c4d5e6f', year: 1969, make: 'Chevrolet', model: 'Camaro', engine: :ice} )
      @facility.add_service('Vehicle Registration')
      @facility.register_vehicle(camaro)
      expect(camaro.plate_type).to eq(:antique)
    end 
    it 'can change change registration dates' do 
      camaro = Vehicle.new({vin: '1a2b3c4d5e6f', year: 1969, make: 'Chevrolet', model: 'Camaro', engine: :ice} )
      @facility.add_service('Vehicle Registration')
      @facility.register_vehicle(camaro)
      expect(camaro.registration_date).to be_an_instance_of(DateTime)
    end 
    it 'can add collection fee to the facility' do 
      camaro = Vehicle.new({vin: '1a2b3c4d5e6f', year: 1969, make: 'Chevrolet', model: 'Camaro', engine: :ice} )
      @facility.add_service('Vehicle Registration')
      @facility.register_vehicle(camaro)
      expect(@facility.collected_fees).to eq(25)
    end 
    it 'adds vehicle to the facility\'s list of registered vehicles' do 
      camaro = Vehicle.new({vin: '1a2b3c4d5e6f', year: 1969, make: 'Chevrolet', model: 'Camaro', engine: :ice} )
      @facility.add_service('Vehicle Registration')
      @facility.register_vehicle(camaro)
      expect(@facility.registered_vehicles.length).to eq(1) 
    end 
  end 

  describe '#administer_written_test' do 
    it 'changes status of a registrant\'s written test' do 
      registrant = Registrant.new('Bruce', 18, true )
      @facility.add_service("Written Test")
      test_administered = @facility.administer_written_test(registrant)
      expect(test_administered).to eq(true)
      expect(registrant.licence_data[:written]).to eq(true)
    end 

    it 'does not changes status of a registrant\'s written test if the registrant is not 15' do 
      registrant = Registrant.new('Tucker', 15 )
      @facility.add_service("Written Test")
      test_administered = @facility.administer_written_test(registrant)
      expect(test_administered).to eq(false)
      expect(registrant.licence_data[:written]).to eq(false)
    end 

    it 'does not changes status of a registrant\'s written test if the registrant is not 15 or doesn\'t have a permit' do 
      registrant = Registrant.new('Tucker', 15 )
      @facility.add_service("Written Test")
      registrant.earn_permit
      test_administered = @facility.administer_written_test(registrant)
      expect(test_administered).to eq(false)
      expect(registrant.licence_data[:written]).to eq(false)
    end 
  end 

  describe '#administer_road_test' do
    it 'can administer a license if the registrant has passed a written test and the facility can conduct road tests' do
      registrant = Registrant.new('Bruce', 18, true )
      @facility.add_service("Written Test")
      @facility.administer_written_test(registrant)
      @facility.add_service('Road Test')
      @facility.administer_road_test(registrant)
      expect(registrant.licence_data[:license]).to eq(true)
    end 
  end 
end 
