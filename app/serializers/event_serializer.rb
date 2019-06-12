class EventSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :date, :description, :address, :category

  attribute :venues do |event|
    PublicEntitySerializer.new(event.venues)
  end

  attribute :organizers do |event|
    PublicEntitySerializer.new(event.organizers)
  end

  attribute :attendees do |event|
    PublicEntitySerializer.new(event.attendees)
  end

end
