class RoseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :garden_id, :petals, :thorns, :water, :id
end
