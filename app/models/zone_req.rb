require 'json'
class ZoneReq < ApplicationRecord

  def self.import
  file = Faraday.get(URI.parse('https://data.cambridgema.gov/resource/r74a-32rp.json'))
  body_hash = JSON.parse(file.body)
  body_hash.each do |body|
 
    zone_req = ZoneReq.create(
      applied_online: body["applied_online"],
      applicationdate: body["applicationdate"],
      location_address: body["location_address"],
      location_city: body["location_city"],
      location_state: body["location_state"],
      description: body["description"]
      )
    end 
  end
end
