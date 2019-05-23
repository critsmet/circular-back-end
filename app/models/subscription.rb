class Subscription < ApplicationRecord
  belongs_to :subscriber, class_name: "Entity"
  belongs_to :subscribed, class_name: "Entity"
end
