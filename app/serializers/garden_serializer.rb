class GardenSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :feels, :date
end
