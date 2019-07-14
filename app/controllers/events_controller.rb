class EventsController < ApplicationController
  def index
    first_day = DateTime.new(2019, 7, 9, 0, 0, 0, '-4')
    #fix this so that it's just using the Time class
    second_day = first_day + 1.day
    third_day = second_day + 1.day
    fourth_day = third_day + 1.day
    fifth_day = fourth_day + 1.day
    sixth_day = fifth_day + 1.day
    seventh_day = sixth_day + 1.day
    event_date_hash = {
      'data': [
        {date: "#{first_day.strftime("%A, %b %d, %Y")}", events: EventSerializer.new(Event.by_date(first_day))},
        {date: "#{second_day.strftime("%A, %b %d, %Y")}", events: EventSerializer.new(Event.by_date(second_day))},
        {date: "#{third_day.strftime("%A, %b %d, %Y")}", events: EventSerializer.new(Event.by_date(third_day))},
        {date: "#{fourth_day.strftime("%A, %b %d, %Y")}", events: EventSerializer.new(Event.by_date(fourth_day))},
        {date: "#{fifth_day.strftime("%A, %b %d, %Y")}", events: EventSerializer.new(Event.by_date(fifth_day))},
        {date: "#{sixth_day.strftime("%A, %b %d, %Y")}", events: EventSerializer.new(Event.by_date(sixth_day))},
        {date: "#{seventh_day.strftime("%A, %b %d, %Y")}", events: EventSerializer.new(Event.by_date(seventh_day))}
      ]
    }
    render json: event_date_hash
  end

  def show
    event = Event.find(params[:id])
    render json: EventSerializer.new(event)
  end
end
