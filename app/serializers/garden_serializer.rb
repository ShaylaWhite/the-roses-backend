class GardenSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :feels, :date
end
