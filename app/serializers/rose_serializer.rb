class RoseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :garden_id, :petals, :thorns, :water, :id
end
