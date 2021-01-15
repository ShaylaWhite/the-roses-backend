class RoseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :petals, :thorns, :water, :garden_id
end
