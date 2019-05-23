class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :date, :description, :address, :category
end
