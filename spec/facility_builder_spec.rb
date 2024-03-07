
require 'spec_helper'

RSpec.describe 'FacilityBuilder' do 
  describe '#build_facilities ' do 
    it 'should build facilities from DMV data CO' do 
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

    it 'should build facilities from DMV data from NY' do 
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

    it 'should build facilities from MO DMV data' do 
      mo_dmv_facilities = [
        {
          "number": "059",
          "dorregionnumber": "5",
          "type": "1MV",
          "name": "FERGUSON-OFFICE CLOSED UNTIL FURTHER NOTICE",
          "address1": "10425 WEST FLORISSANT",
          "city": "FERGUSON",
          "state": "MO",
          "zipcode": "63136",
          "located_in": "Personalized plates can be picked up at the North County License Office. ",
          "county": "St. Louis County",
          "phone": "(314) 733-5316",
          "fax": "(314) 733-5319",
          "size": "3",
          "email": "FERGUSONAGENTOFFICE@DOR.MO.GOV",
          "latlng": {
            "latitude": "38.737935",
            "longitude": "-90.220029"
          },
          "textingphonenumber": "(314) 730-0606",
          "additional_license_office_info": "Personalized plates can be picked up at the North County License office located at 11700 W Florissant, St. Louis, MO 63033.",
          ":@computed_region_ny2h_ckbz": "203",
          ":@computed_region_c8ar_jsdj": "51",
          ":@computed_region_ikxf_gfzr": "2210"
        },
        {
          "number": "035",
          "dorregionnumber": "5",
          "type": "1MV",
          "name": "FLORISSANT",
          "address1": "650 N HWY 67",
          "city": "FLORISSANT",
          "state": "MO",
          "zipcode": "63031",
          "located_in": "FLORISSANT MEADOWS SHOPPING CENTER",
          "county": "St. Louis County",
          "phone": "(314) 474-5045",
          "fax": "(314) 474-5073",
          "size": "3",
          "email": "FLORISSANTAGENTOFFICE@DOR.MO.GOV",
          "agent": "Esto Vir Foundation",
          "officemanager": "Diana Green",
          "daysopen": "Monday - Friday - 9:00 to 5:00",
          "holidaysclosed": "Christmas Day Observed (12/25/23), New Year's Day (1/1/24), Martin Luther King Jr. Day (1/15/24), Lincoln's Birthday (2/12/24), President's Day (2/19/24), Truman's Birthday (5/8/24), Memorial Day (5/27/24), Juneteenth (6/19/24), Independence Day (7/4/24), Labor Day (9/2/24), Columbus Day (10/14/24), Veterans Day (11/11/24), Thanksgiving Day (11/28/24), Christmas Day (12/25/24)",
          "additionaldaysclosed": "01/02/23,     1/3/2023 (open at 8:30 AM),    5/10/2023 (at 9:00 AM until 2:00 PM ),    5/10/2023 (open at 2:00 PM ),    7/3/2023,   11/24/2023,   1/22/2024,  2/16/2024 (at 2:00 PM ),   07/05/2024,   11/29/2024,   12/24/2024",
          "latlng": {
            "latitude": "38.798915",
            "longitude": "-90.336556"
          },
          ":@computed_region_ny2h_ckbz": "181",
          ":@computed_region_c8ar_jsdj": "51",
          ":@computed_region_ikxf_gfzr": "2210"
        },
        {
          "number": "177",
          "dorregionnumber": "8",
          "type": "1MV",
          "name": "DOWNTOWN (ST LOUIS)",
          "address1": "1405 PINE STREET, 2ND FLOOR, SUITE 202",
          "city": "ST LOUIS",
          "state": "MO",
          "zipcode": "63103",
          "county": "St. Louis City",
          "phone": "(314) 968-0368",
          "fax": "(314) 463-0755",
          "size": "3",
          "email": "DowntownLicenseAgentOffice@dor.mo.gov",
          "agent": "ALLIED HEALTHWISE LLC",
          "officemanager": "GEORGIA DAVIS-LEE",
          "daysopen": "Monday - Friday - 9:00 to 5:00",
          "holidaysclosed": "New Year's Day (1/1/24), Martin Luther King Jr. Day (1/15/24), Lincoln's Birthday (2/12/24), President's Day (2/19/24), Truman's Birthday (5/8/24), Memorial Day (5/27/24), Juneteenth (6/19/24), Independence Day (7/4/24), Labor Day (9/2/24), Columbus Day (10/14/24), Veterans Day (11/11/24), Thanksgiving Day (11/28/24), Christmas Day (12/25/24)",
          "additionaldaysclosed": "3/29/24 (F), 4/15/24 (F), 11/5/24 (F), 12/24/24 (PM), 12/31/24 (PM)",
          "latlng": {
            "latitude": "38.629185",
            "longitude": "-90.2174318"
          },
          "facebook_url": "https://www.facebook.com/profile.php?id=61555743571673",
          "textingphonenumber": "(314) 978-0368",
          "othercontactinfo": "Website: downtownstldmv.com",
          ":@computed_region_ny2h_ckbz": "200",
          ":@computed_region_c8ar_jsdj": "54",
          ":@computed_region_ikxf_gfzr": "2223"
        }]
        facilities = FacilityBuilder.new
        facilities.build_facilities(mo_dmv_facilities)
        p facilities
        expect(facilities.facilities_built.length).to eq(3)

    end 
  end
end 