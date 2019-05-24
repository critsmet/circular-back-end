class Event < ApplicationRecord
  has_many :presences
  has_many :entities, through: :presences

  enum category: { music: 'music', art: 'art', film: 'film', performance: 'performance', food: 'food', protest: 'protest', class: 'class', workshop:'workshop', gathering: 'gathering'}

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

end
