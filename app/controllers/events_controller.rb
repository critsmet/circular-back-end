class EventsController < ApplicationController

  def create
    event = Event.new(event_params)
    event.date = Time.parse(params[:event][:date] + " America/New_York")
    event.save
    render json: {event_id: event.id}
  end

  def day
    date = Time.parse(params[:day] + " America/New_York")
    render json: EventSerializer.new(Event.by_date(date))
  end

  def month
    first_day = DateTime.new(2019, 9, 1, 0, 0, 0, '-4')
    event_hash = create_event_hash(first_day, 31)
    render json: event_hash
  end

  def week
    first_day = DateTime.new(2019, 9, 1, 0, 0, 0, '-4')
    #fix this so that it's just using the Time class
    event_hash = create_event_hash(first_day, 7)
    render json: event_hash
  end

  def show
    event = Event.find(params[:id])
    render json: EventSerializer.new(event)
  end

  def search
    if params[:filter] == "name"
      events = Event.where("lower(#{params[:filter]}) like ?", "%#{params[:param].downcase}%")
      render json: EventSerializer.new(events)
    else
      events = Event.where("#{params[:filter]}": params[:param].downcase)
      render json: EventSerializer.new(events)
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :location, :category, :image_url, :tags, :self_destruct?)
  end

  def create_event_hash(starting_date, number)
    event_hash = {data: []}
    event_date = starting_date
    number.times do
      event_hash[:data] << {date: "#{event_date.strftime("%A, %b %d %Y")}", events: EventSerializer.new(Event.by_date(event_date))}
      event_date += 1.day
    end
    event_hash
  end

end
