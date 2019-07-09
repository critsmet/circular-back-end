class EventsController < ApplicationController
  def index
    date = DateTime.new(2019, 7, 9, 0, 0, 0)
    render json: EventSerializer.new(Event.this_week(date, date.end_of_day + 7.days))
  end
end
