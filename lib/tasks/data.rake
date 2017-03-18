require "csv"

namespace :import do
  task data: :environment do
    CSV.foreach("lib/assets/all_month.csv", :headers => true) do |row|
      row_hash = row.to_hash
      information = Information.new(time: row_hash["time"], latitude: row_hash["latitude"], longitude: row_hash["longitude"], depth: row_hash["depth"],mag: row_hash["mag"],magType: row_hash["magType"],nst: row_hash["nst"],gap: row_hash["gap"],dmin: row_hash["dmin"],rms: row_hash["rms"],net: row_hash["net"],id: row_hash["id"],updated: row_hash["updated"],place: row_hash["place"],type: row_hash["type"], horizontalError: row_hash["horizontalError"], depthError: row_hash["depthError"], magError: row_hash["magError"], magNst: row_hash["magNst"],status: row_hash["status"],locationSource: row_hash["locationSource"],magSource: row_hash["magSource"])
      information[:dist_from_la] = distance(information["latitude"],information["longitude"])
      information.save
    end
  end
  
  def distance(lat2, long2)
    lat1 = 34.0522
    long1 = -118.2437
    radius_of_earth = 3959
    rlat1, rlong1, rlat2, rlong2 = [lat1, long1, lat2, long2].map { |d| as_radians(d)}
    dlon = rlong1 - rlong2
    dlat = rlat1 - rlat2
    a = power(Math::sin(dlat/2), 2) + Math::cos(rlat1) * Math::cos(rlat2) * power(Math::sin(dlon/2), 2)
    c = 2 * Math::atan2(Math::sqrt(a), Math::sqrt(1-a))
    d = radius_of_earth * c
    return d
  end

  def as_radians(degrees)
    degrees * Math::PI/180
  end

  def power(num, pow)
    num ** pow
  end
end