
require 'spec_helper'

RSpec.describe 'FacilityBuilder' do 
  describe '#build_facilities ' do 
    it 'should build facilities from DMV data' do 
      co_dmv_facilities = [
        {
          "the_geom": {
            "type": "Point",
            "coordinates": [
              -104.97443112500002,
              39.75525297420336
            ]
          },
          "dmv_id": "1",
          "dmv_office": "DMV Tremont Branch",
          "address_li": "2855 Tremont Place",
          "address__1": "Suite 118",
          "city": "Denver",
          "state": "CO",
          "zip": "80205",
          "phone": "(720) 865-4600",
          "hours": "Mon, Tue, Thur, Fri  8:00 a.m.- 4:30 p.m. / Wed 8:30 a.m.-4:30 p.m.",
          "services_p": "vehicle titles, registration, renewals;  VIN inspections",
          "parking_no": "parking available in the lot at the back of the bldg (Glenarm Street)",
          "photo": "images/Tremont.jpg",
          "address_id": "175164",
          ":@computed_region_nku6_53ud": "1444"
        },
        {
          "the_geom": {
            "type": "Point",
            "coordinates": [
              -104.84839592880655,
              39.78135984611333
            ]
          },
          "dmv_id": "2",
          "dmv_office": "DMV Northeast Branch",
          "address_li": "4685 Peoria Street",
          "address__1": "Suite 101",
          "location": "Arie P. Taylor  Municipal Bldg",
          "city": "Denver",
          "state": "CO",
          "zip": "80239",
          "phone": "(720) 865-4600",
          "hours": "Mon, Tue, Thur, Fri  8:00 a.m.- 4:30 p.m. / Wed 8:30 a.m.-4:30 p.m.",
          "services_p": "vehicle titles, registration, renewals;  VIN inspections",
          "parking_no": "parking available in both the front and back of the bldg; also on Paris Street",
          "photo": "images/Peoria.jpg",
          "address_id": "11348",
          ":@computed_region_nku6_53ud": "1444"
        }]

      facilities = FacilityBuilder.new
      facilities.build_facilities(co_dmv_facilities)
      p facilities
      expect(facilities.facilities_built.length).to eq(2)
    end 

    it 'should build facilities from DMV data' do 
      ny_dmv_facilities = [
        {
          "office_name": "JAMAICA",
          "office_type": "DISTRICT OFFICE",
          "public_phone_number": "7189666155",
          "street_address_line_1": "168-46 91ST AVE., 2ND FLR",
          "city": "JAMAICA",
          "state": "NY",
          "zip_code": "11432",
          "monday_beginning_hours": "7:30 AM",
          "monday_ending_hours": "5:00 PM",
          "tuesday_beginning_hours": "7:30 AM",
          "tuesday_ending_hours": "5:00 PM",
          "wednesday_beginning_hours": "7:30 AM",
          "wednesday_ending_hours": "5:00 PM",
          "thursday_beginning_hours": "7:30 AM",
          "thursday_ending_hours": "5:00 PM",
          "friday_beginning_hours": "7:30 AM",
          "friday_ending_hours": "5:00 PM",
          "georeference": {
            "type": "Point",
            "coordinates": [
              -73.791443647,
              40.707575521
            ]
          },
          ":@computed_region_yamh_8v7k": "196",
          ":@computed_region_wbg7_3whc": "1216",
          ":@computed_region_kjdx_g34t": "2137"
        },
        {
          "office_name": "RIVERHEAD KIOSK",
          "office_type": "DISTRICT OFFICE",
          "street_address_line_1": "200 OLD COUNTRY ROAD",
          "city": "RIVERHEAD",
          "state": "NY",
          "zip_code": "11901",
          "monday_beginning_hours": "7:30 AM",
          "monday_ending_hours": "5:00 PM",
          "tuesday_beginning_hours": "7:30 AM",
          "tuesday_ending_hours": "5:00 PM",
          "wednesday_beginning_hours": "7:30 AM",
          "wednesday_ending_hours": "5:00 PM",
          "thursday_beginning_hours": "7:30 AM",
          "thursday_ending_hours": "5:00 PM",
          "friday_beginning_hours": "7:30 AM",
          "friday_ending_hours": "5:00 PM",
          "georeference": {
            "type": "Point",
            "coordinates": [
              -72.651333405,
              40.937278602
            ]
          },
          ":@computed_region_yamh_8v7k": "1017",
          ":@computed_region_wbg7_3whc": "1530",
          ":@computed_region_kjdx_g34t": "2179"
        },
        {
          "office_name": "MIDTOWN MANHATTAN KIOSK",
          "office_type": "DISTRICT OFFICE",
          "street_address_line_1": "366 WEST 31ST STREET",
          "city": "NEW YORK",
          "state": "NY",
          "zip_code": "10001",
          "monday_beginning_hours": "7:30 AM",
          "monday_ending_hours": "5:00 PM",
          "tuesday_beginning_hours": "7:30 AM",
          "tuesday_ending_hours": "5:00 PM",
          "wednesday_beginning_hours": "7:30 AM",
          "wednesday_ending_hours": "5:00 PM",
          "thursday_beginning_hours": "7:30 AM",
          "thursday_ending_hours": "5:00 PM",
          "friday_beginning_hours": "7:30 AM",
          "friday_ending_hours": "5:00 PM",
          "georeference": {
            "type": "Point",
            "coordinates": [
              -73.997510892,
              40.751308771
            ]
          },
          ":@computed_region_yamh_8v7k": "749",
          ":@computed_region_wbg7_3whc": "717",
          ":@computed_region_kjdx_g34t": "2095"
        },
        {
          "office_name": "ALBANY",
          "office_type": "DISTRICT OFFICE",
          "public_phone_number": "5184869786",
          "street_address_line_1": "855 CENTRAL AVENUE",
          "city": "ALBANY",
          "state": "NY",
          "zip_code": "12206",
          "monday_beginning_hours": "7:30 AM",
          "monday_ending_hours": "5:00 PM",
          "tuesday_beginning_hours": "7:30 AM",
          "tuesday_ending_hours": "5:00 PM",
          "wednesday_beginning_hours": "7:30 AM",
          "wednesday_ending_hours": "5:00 PM",
          "thursday_beginning_hours": "7:30 AM",
          "thursday_ending_hours": "5:00 PM",
          "friday_beginning_hours": "7:30 AM",
          "friday_ending_hours": "5:00 PM",
          "georeference": {
            "type": "Point",
            "coordinates": [
              -73.788560104,
              42.68083973
            ]
          },
          ":@computed_region_yamh_8v7k": "814",
          ":@computed_region_wbg7_3whc": "43",
          ":@computed_region_kjdx_g34t": "2030"
        },
        {
          "office_name": "MALONE",
          "office_type": "COUNTY OFFICE",
          "public_phone_number": "5184811606",
          "street_address_line_1": "355 WEST MAIN STREET",
          "street_address_line_2": "ROOM 107",
          "city": "MALONE",
          "state": "NY",
          "zip_code": "12953",
          "monday_beginning_hours": "8:00 AM",
          "monday_ending_hours": "3:45 PM",
          "tuesday_beginning_hours": "8:00 AM",
          "tuesday_ending_hours": "3:45 PM",
          "wednesday_beginning_hours": "8:00 AM",
          "wednesday_ending_hours": "3:45 PM",
          "thursday_beginning_hours": "8:00 AM",
          "thursday_ending_hours": "3:45 PM",
          "friday_beginning_hours": "8:00 AM",
          "friday_ending_hours": "3:45 PM",
          "georeference": {
            "type": "Point",
            "coordinates": [
              -74.295308429,
              44.849171487
            ]
          },
          ":@computed_region_yamh_8v7k": "182",
          ":@computed_region_wbg7_3whc": "278",
          ":@computed_region_kjdx_g34t": "621"
        }]
      facilities = FacilityBuilder.new
      facilities.build_facilities(ny_dmv_facilities)
      p facilities
      expect(facilities.facilities_built.length).to eq(5)
    end 
  end
end 