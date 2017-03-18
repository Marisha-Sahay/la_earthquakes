class Information < ActiveRecord::Base
  self.inheritance_column = "inheritance_type"
  # reverse_geocoded_by :latitude, :longitude,
  #   :address => :location
  # after_validation :reverse_geocode
end
