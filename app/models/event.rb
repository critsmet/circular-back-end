class Event < ApplicationRecord
  has_many :presences
  has_many :entities, through: :presences
  scope :by_date, lambda {|date| where(" date >= ? AND date <= ?", date, date.end_of_day)}

  enum category: { music: 'music', art: 'art', film: 'film', performance: 'performance', food: 'food', protest: 'protest', class: 'class', workshop:'workshop', gathering: 'gathering'}, _prefix: :category_type
  # we need to add a prefix because enums create scopes that compete with other methods??
  # https://naturaily.com/blog/ruby-on-rails-enum

  def events_by_date(date)
    parsed_date = DateTime.parse(date)
    self.all select do |event|
      event.date.strftime("%Y%m%d") == parsed_date.strftime("%Y%m%d")
    end
  end

  def venues
    #should I use filter or where?
    self.presences.filter do |presence|
      presence.presence_type === "venue"
    end.map do |presence|
      presence.entity
    end
  end

  def organizers
    self.presences.filter do |presence|
      presence.presence_type === "organizer"
    end.map do |presence|
      presence.entity
    end
  end

  def attendees
    self.presences.filter do |presence|
      presence.presence_type === "attendee"
    end.map do |presence|
      presence.entity
    end
  end

end
