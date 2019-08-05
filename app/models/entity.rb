class Entity < ApplicationRecord
  has_secure_password

  # See commented-out code below for notes on these relationships
  # We know that enum provides scopes...is there a better way to do this?
  has_many :organizer_presences, -> {as_organizer}, class_name: 'Presence'
  has_many :organizing_events, source: :event, through: :organizer_presences

  has_many :attending_presences, -> {as_attendee}, class_name: 'Presence'
  has_many :attending_events, source: :event, through: :attending_presences

  has_many :hosting_presences, -> {as_venue}, class_name: 'Presence'
  has_many :hosting_events, source: :event, through: :hosting_presences

  has_many :active_subs, class_name: "Subscription", foreign_key: "subscriber_id", dependent: :destroy
  has_many :subscribed, through: :active_subs

  has_many :passive_subs, class_name: "Subscription", foreign_key: "subscribed_id", dependent: :destroy
  has_many :subscribers, through: :passive_subs

  validates :handle, presence: true, uniqueness: true
  validates :entity_type, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true

  before_create :confirmation_token

  enum entity_type: { personal: "personal", collective: "collective", venue: "venue" }

  # I originally had used the following instance methds instead of adding scope to the Presence class and then using the has_many macro above.
  # The goal was to be able to use fast_json serializer's :include feature but it did not yield the desired results.
  # I still have to pass through the collection into an instance method for each serializer to have them formatted in the desired way.
  # Not sure which way would've been best to use, but the above code looks cleaner and more Rails-y.

  # def as_venue
  #   #should I use filter or where?
  #   self.presences.filter do |presence|
  #     presence.presence_type === "venue"
  #   end.map do |presence|
  #     presence.event
  #   end
  # end
  #
  # def as_organizer
  #   self.presences.filter do |presence|
  #     presence.presence_type === "organizer"
  #   end.map do |presence|
  #     presence.event
  #   end
  # end

  private

  def confirmation_token
    self.confirm_token = SecureRandom.urlsafe_base64.to_s
  end

end
