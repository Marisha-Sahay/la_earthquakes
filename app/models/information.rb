class Information < ActiveRecord::Base
  self.inheritance_column = "inheritance_type"
end
