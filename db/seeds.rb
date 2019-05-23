# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Presence.destroy_all
Event.destroy_all
Entity.destroy_all

chris = Entity.create(handle: "christo", entity_type: "personal", email: "chrismetzgr@gmail.com", password: "123")
oscar = Entity.create(handle: "oscarnn", entity_type: "personal", email: "oscarnn@gmail.com", password: "123")
nowadays = Entity.create(handle: "nowadays", entity_type: "venue", email: "nowadays@gmail.com", password: "123")
papijuice = Entity.create(handle: "papijuicebk", entity_type: "collective", email: "papijuice.com", password: "123")

Subscription.create(subscriber: chris, subscribed: nowadays)
Subscription.create(subscriber: chris, subscribed: papijuice)
Subscription.create(subscriber: chris, subscribed: oscar)
Subscription.create(subscriber: oscar, subscribed: chris)

fruitypapi = Event.create(name: "Fruity Papi", date: "12-02-92", description: "Such a good time", address: "Nowadays")

oscarpapi = Presence.create(entity: oscar, event: fruitypapi, presence_type: "organizer")
chrispapi = Presence.create(entity: chris, event: fruitypapi, presence_type: "attendee")
nowapapi = Presence.create(entity: nowadays, event: fruitypapi, presence_type: "venue")
