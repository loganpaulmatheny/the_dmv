require_relative 'facility'

class FacilityBuilder 
  attr_reader :facilities_built

  def initialize 
    @facilities_built = []
  end 

  def build_facilities(facilities_data)
    @facilities_built = facilities_data.map do |facility| 
      Facility.new(facility)
    end
  end 

end