class Event < ApplicationRecord

  # See commented-out code below for notes on these relationships
  # We know that enum provides scopes...is there a better way to do this?
  has_many :organizer_presences, -> {as_organizer}, class_name: 'Presence'
  has_many :organizers, source: :entity, through: :organizer_presences

  has_many :attendee_presences, -> {as_attendee}, class_name: 'Presence'
  has_many :attendees, source: :entity, through: :attendee_presences

  has_many :venue_presences, -> {as_venue}, class_name: 'Presence'
  has_many :venues, source: :entity, through: :venue_presences

  validates :handle, presence: true, uniqueness: true
  validates :entity_type, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true

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

  # I originally had used the following instance methds instead of adding scope to the Presence class and then using the has_many macro above.
  # The goal was to be able to use fast_json serializer's :include feature but it did not yield the desired results.
  # I still have to pass through the collection into an instance method for each serializer to have them formatted in the desired way.
  # Not sure which way would've been best to use, but the above code looks cleaner and more Rails-y.
  # def venues
  #   self.presences.filter do |presence|
  #     presence.presence_type === "venue"
  #   end.map do |presence|
  #     presence.entity
  #   end
  # end
  #
  # def organizers
  #   self.presences.filter do |presence|
  #     presence.presence_type === "organizer"
  #   end.map do |presence|
  #     presence.entity
  #   end
  # end
  #
  # def attendees
  #   self.presences.filter do |presence|
  #     presence.presence_type === "attendee"
  #   end.map do |presence|
  #     presence.entity
  #   end
  # end

end
