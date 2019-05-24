class Entity < ApplicationRecord
  has_secure_password

  has_many :presences, dependent: :destroy
  has_many :events, through: :presences
  has_many :active_subs, class_name: "Subscription", foreign_key: "subscriber_id", dependent: :destroy
  has_many :passive_subs, class_name: "Subscription", foreign_key: "subscribed_id", dependent: :destroy
  has_many :subscribed, through: :active_subs
  has_many :subscribers, through: :passive_subs

  validates :handle, presence: true, uniqueness: true
  validates :entity_type, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true

  before_create :confirmation_token


  enum entity_type: { personal: "personal", collective: "collective", venue: "venue" }

  def as_venue
    #should I use filter or where?
    self.presences.filter do |presence|
      presence.presence_type === "venue"
    end.map do |presence|
      presence.event
    end
  end

  def as_organizer
    self.presences.filter do |presence|
      presence.presence_type === "organizer"
    end.map do |presence|
      presence.event
    end
  end

  private

  def confirmation_token
    self.confirm_token = SecureRandom.urlsafe_base64.to_s
  end

end
