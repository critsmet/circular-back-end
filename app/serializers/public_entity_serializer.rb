class PublicEntitySerializer
  include FastJsonapi::ObjectSerializer
  set_type :entity
  attributes :handle, :name, :entity_type

end
