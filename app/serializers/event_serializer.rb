class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :category, :image_url, :tags

  attribute :time do |event|
    event.date.localtime.strftime("%H:%M")
  end

  attribute :location do |event|
    written_location = event.location
    if written_location
      written_location
    else
      event.venues.map do |venue|
        venue.name || venue.handle
      end.join(", ")
    end
  end

  attribute :todays_date do |event|
    DateTime.now
  end
  #a location of the event should be visible.
  link :organizers do |event|
    "http://localhost:3000/events/#{event.id}/organizers"
  end
  link :venues do |event|
    "http://localhost:3000/events/#{event.id}/venues"
  end
  link :attendees do |event|
    "http://localhost:3000/events/#{event.id}/attendees"
  end
end
