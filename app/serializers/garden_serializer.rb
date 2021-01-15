class GardenSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :feels, :date
  has_many :roses

end
