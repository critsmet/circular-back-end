class EventsController < ApplicationController
  def index
    first_day = DateTime.new(2019, 7, 9, 0, 0, 0, '-4')
    second_day = first_day + 1.day
    third_day = second_day + 1.day
    fourth_day = third_day + 1.day
    fifth_day = fourth_day + 1.day
    sixth_day = fifth_day + 1.day
    seventh_day = sixth_day + 1.day
    event_date_hash = {
      "#{first_day.strftime("%A, %B %d, %Y")}": EventSerializer.new(Event.by_date(first_day)),
      "#{second_day.strftime("%A, %B %d, %Y")}": EventSerializer.new(Event.by_date(second_day)),
      "#{third_day.strftime("%A, %B %d, %Y")}": EventSerializer.new(Event.by_date(third_day)),
      "#{fourth_day.strftime("%A, %B %d, %Y")}": EventSerializer.new(Event.by_date(fourth_day)),
      "#{fifth_day.strftime("%A, %B %d, %Y")}": EventSerializer.new(Event.by_date(fifth_day)),
      "#{sixth_day.strftime("%A, %B %d, %Y")}": EventSerializer.new(Event.by_date(sixth_day)),
      "#{seventh_day.strftime("%A, %B %d, %Y")}": EventSerializer.new(Event.by_date(seventh_day))
    }
    render json: event_date_hash
  end
end
