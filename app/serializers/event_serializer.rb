class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :category, :image_url, :tags

  attribute :time do |event|
    event.date.localtime.strftime("%H:%M")
  end

  attribute :todays_date do |event|
    DateTime.now
  end

  attribute :location, if: Proc.new { |event| event.location }
  #The line of code above determines if a location was manually typed in or if one was select, meaning a Venue was added to the list below.
  #The client side application will determine which to correctly render.
  attribute :venues do |event|
    BriefEntitySerializer.new(event.venues)
  end
  attribute :attendees do |event|
    BriefEntitySerializer.new(event.attendees)
  end
  attribute :organizers do |event|
    BriefEntitySerializer.new(event.organizers)
  end
  # I would have preferred to use FastJson's include feature for the relationships above.
  # But it was not giving the desired result
  # Ended up using the instane methods and passing them to the correct EventSerializer
  # Is there a better way to do this?

end
