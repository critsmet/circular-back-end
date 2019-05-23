class Presence < ApplicationRecord
  belongs_to :entity
  belongs_to :event

  enum presence_type: { venue: 'venue', organizer: 'organizer', attendee: 'attendee'}

end
