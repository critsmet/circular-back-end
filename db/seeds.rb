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
elsewhere = Entity.create(handle: "elsewhere", entity_type: "venue", email: "elsewhere@gmail.com", password: "123", name: "Elsewhere")
#venues should have a handle, see the event serializer
papijuice = Entity.create(handle: "papijuicebk", entity_type: "collective", email: "papijuice.com", password: "123")

Subscription.create(subscriber: chris, subscribed: nowadays)
Subscription.create(subscriber: chris, subscribed: papijuice)
Subscription.create(subscriber: chris, subscribed: oscar)
Subscription.create(subscriber: oscar, subscribed: chris)

p1 = Event.create(name: "Fruity Papi", date: DateTime.parse("July 9, 2019, 10PM EST"), description: "Such a good time", location: nil, category: "music", image_url: "https://scontent-ber1-1.cdninstagram.com/vp/b7c645470c7efcec734ffbbcd986467d/5DC3EA99/t51.2885-15/e35/p1080x1080/61233742_139792527195129_4990612361767943016_n.jpg?_nc_ht=scontent-ber1-1.cdninstagram.com")
p2 = Event.create(name: "Rave", date: DateTime.parse("July 9, 2019, 10PM EST"), description: "Weekday rave!", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")
p3 = Event.create(name: "Shindig", date: DateTime.parse("July 10, 2019, 10PM EST"), description: "Something coool", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219877/original_d342624d1b1e3b883d9d6b302ecb66e4?1395698246")
p4 = Event.create(name: "Fruity Papi", date: DateTime.parse("July 10, 2019, 10PM EST"), description: "Such a good time", location: nil, category: "music", image_url: "https://scontent-ber1-1.cdninstagram.com/vp/b7c645470c7efcec734ffbbcd986467d/5DC3EA99/t51.2885-15/e35/p1080x1080/61233742_139792527195129_4990612361767943016_n.jpg?_nc_ht=scontent-ber1-1.cdninstagram.com")
p5 = Event.create(name: "Rave", date: DateTime.parse("July 11, 2019, 10PM EST"), description: "Weekday rave!", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")
p6 = Event.create(name: "Shindig", date: DateTime.parse("July 11, 2019, 10PM EST"), description: "Something coool", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219877/original_d342624d1b1e3b883d9d6b302ecb66e4?1395698246")
p7 = Event.create(name: "Fruity Papi", date: DateTime.parse("July 3, 2019, 10PM EST"), description: "Such a good time", location: nil, category: "music", image_url: "https://scontent-ber1-1.cdninstagram.com/vp/b7c645470c7efcec734ffbbcd986467d/5DC3EA99/t51.2885-15/e35/p1080x1080/61233742_139792527195129_4990612361767943016_n.jpg?_nc_ht=scontent-ber1-1.cdninstagram.com")
p8 = Event.create(name: "Rave", date: DateTime.parse("July 12, 2019, 10PM EST"), description: "Weekday rave!", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")
p9 = Event.create(name: "Shindig", date: DateTime.parse("July 12, 2019, 10PM EST"), description: "Something coool", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219877/original_d342624d1b1e3b883d9d6b302ecb66e4?1395698246")
p10 = Event.create(name: "Fruity Papi", date: DateTime.parse("July 13, 2019, 10PM EST"), description: "Such a good time", location: nil, category: "music", image_url: "https://scontent-ber1-1.cdninstagram.com/vp/b7c645470c7efcec734ffbbcd986467d/5DC3EA99/t51.2885-15/e35/p1080x1080/61233742_139792527195129_4990612361767943016_n.jpg?_nc_ht=scontent-ber1-1.cdninstagram.com")
p11 = Event.create(name: "Rave", date: DateTime.parse("July 13, 2019, 10PM EST"), description: "Weekday rave!", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")
p12 = Event.create(name: "Shindig", date: DateTime.parse("July 14, 2019, 10PM EST"), description: "Something coool", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219877/original_d342624d1b1e3b883d9d6b302ecb66e4?1395698246")
p13 = Event.create(name: "Fruity Papi", date: DateTime.parse("July 14, 2019, 10PM EST"), description: "Such a good time", location: nil, category: "music", image_url: "https://scontent-ber1-1.cdninstagram.com/vp/b7c645470c7efcec734ffbbcd986467d/5DC3EA99/t51.2885-15/e35/p1080x1080/61233742_139792527195129_4990612361767943016_n.jpg?_nc_ht=scontent-ber1-1.cdninstagram.com")
p14 = Event.create(name: "Rave", date: DateTime.parse("July 15, 2019, 10PM EST"), description: "Weekday rave!", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")
p15 = Event.create(name: "Shindig", date: DateTime.parse("July 15, 2019, 10PM EST"), description: "Something coool", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219877/original_d342624d1b1e3b883d9d6b302ecb66e4?1395698246")
p16 = Event.create(name: "Fruity Papi", date: DateTime.parse("July 16, 2019, 10PM EST"), description: "Such a good time", location: nil, category: "music", image_url: "https://scontent-ber1-1.cdninstagram.com/vp/b7c645470c7efcec734ffbbcd986467d/5DC3EA99/t51.2885-15/e35/p1080x1080/61233742_139792527195129_4990612361767943016_n.jpg?_nc_ht=scontent-ber1-1.cdninstagram.com")
p17 = Event.create(name: "Shindig", date: DateTime.parse("July 16, 2019, 10PM EST"), description: "Something coool", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219877/original_d342624d1b1e3b883d9d6b302ecb66e4?1395698246")
p18 = Event.create(name: "Fruity Papi", date: DateTime.parse("July 17, 2019, 10PM EST"), description: "Such a good time", location: nil, category: "music", image_url: "https://scontent-ber1-1.cdninstagram.com/vp/b7c645470c7efcec734ffbbcd986467d/5DC3EA99/t51.2885-15/e35/p1080x1080/61233742_139792527195129_4990612361767943016_n.jpg?_nc_ht=scontent-ber1-1.cdninstagram.com")
p19 = Event.create(name: "Rave", date: DateTime.parse("July 17, 2019, 10PM EST"), description: "Weekday rave!", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")
p20 = Event.create(name: "Shindig", date: DateTime.parse("July 10, 2019, 10PM EST"), description: "Something coool", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219877/original_d342624d1b1e3b883d9d6b302ecb66e4?1395698246")

oscarpapi = Presence.create(entity: oscar, event: p1, presence_type: "organizer")
chrispapi = Presence.create(entity: chris, event: p1, presence_type: "attendee")
nowapapi = Presence.create(entity: nowadays, event: p1, presence_type: "venue")
elsepapi = Presence.create(entity: elsewhere, event: p1, presence_type: "venue")

oscarpapi = Presence.create(entity: oscar, event: p2, presence_type: "organizer")
chrispapi = Presence.create(entity: chris, event: p2, presence_type: "attendee")
nowapapi = Presence.create(entity: nowadays, event: p2, presence_type: "venue")

oscarpapi = Presence.create(entity: chris, event: p20, presence_type: "organizer")
chrispapi = Presence.create(entity: oscar, event: p20, presence_type: "attendee")
nowapapi = Presence.create(entity: nowadays, event: p20, presence_type: "venue")

oscarpapi = Presence.create(entity: oscar, event: p3, presence_type: "organizer")
chrispapi = Presence.create(entity: chris, event: p3, presence_type: "attendee")
nowapapi = Presence.create(entity: nowadays, event: p3, presence_type: "venue")

oscarpapi = Presence.create(entity: oscar, event: p4, presence_type: "organizer")
chrispapi = Presence.create(entity: chris, event: p4, presence_type: "attendee")
nowapapi = Presence.create(entity: nowadays, event: p4, presence_type: "venue")

oscarpapi = Presence.create(entity: oscar, event: p5, presence_type: "organizer")
chrispapi = Presence.create(entity: chris, event: p5, presence_type: "attendee")
nowapapi = Presence.create(entity: nowadays, event: p5, presence_type: "venue")

oscarpapi = Presence.create(entity: oscar, event: p6, presence_type: "organizer")
chrispapi = Presence.create(entity: chris, event: p6, presence_type: "attendee")
nowapapi = Presence.create(entity: nowadays, event: p6, presence_type: "venue")

oscarpapi = Presence.create(entity: oscar, event: p7, presence_type: "organizer")
chrispapi = Presence.create(entity: chris, event: p7, presence_type: "attendee")
nowapapi = Presence.create(entity: nowadays, event: p7, presence_type: "venue")

oscarpapi = Presence.create(entity: oscar, event: p8, presence_type: "organizer")
chrispapi = Presence.create(entity: chris, event: p8, presence_type: "attendee")
nowapapi = Presence.create(entity: nowadays, event: p8, presence_type: "venue")

oscarpapi = Presence.create(entity: oscar, event: p9, presence_type: "organizer")
chrispapi = Presence.create(entity: chris, event: p9, presence_type: "attendee")
nowapapi = Presence.create(entity: nowadays, event: p9, presence_type: "venue")

oscarpapi = Presence.create(entity: oscar, event: p10, presence_type: "organizer")
chrispapi = Presence.create(entity: chris, event: p10, presence_type: "attendee")
nowapapi = Presence.create(entity: nowadays, event: p10, presence_type: "venue")

oscarpapi = Presence.create(entity: oscar, event: p12, presence_type: "organizer")
chrispapi = Presence.create(entity: chris, event: p12, presence_type: "attendee")
nowapapi = Presence.create(entity: nowadays, event: p12, presence_type: "venue")

oscarpapi = Presence.create(entity: oscar, event: p13, presence_type: "organizer")
chrispapi = Presence.create(entity: chris, event: p13, presence_type: "attendee")
nowapapi = Presence.create(entity: nowadays, event: p13, presence_type: "venue")

oscarpapi = Presence.create(entity: oscar, event: p14, presence_type: "organizer")
chrispapi = Presence.create(entity: chris, event: p14, presence_type: "attendee")
nowapapi = Presence.create(entity: nowadays, event: p14, presence_type: "venue")

oscarpapi = Presence.create(entity: oscar, event: p15, presence_type: "organizer")
chrispapi = Presence.create(entity: chris, event: p15, presence_type: "attendee")
nowapapi = Presence.create(entity: nowadays, event: p15, presence_type: "venue")

oscarpapi = Presence.create(entity: oscar, event: p16, presence_type: "organizer")
chrispapi = Presence.create(entity: chris, event: p16, presence_type: "attendee")
nowapapi = Presence.create(entity: nowadays, event: p16, presence_type: "venue")

oscarpapi = Presence.create(entity: oscar, event: p17, presence_type: "organizer")
chrispapi = Presence.create(entity: chris, event: p17, presence_type: "attendee")
nowapapi = Presence.create(entity: nowadays, event: p17, presence_type: "venue")

oscarpapi = Presence.create(entity: oscar, event: p18, presence_type: "organizer")
chrispapi = Presence.create(entity: chris, event: p18, presence_type: "attendee")
nowapapi = Presence.create(entity: nowadays, event: p18, presence_type: "venue")

oscarpapi = Presence.create(entity: oscar, event: p19, presence_type: "organizer")
chrispapi = Presence.create(entity: chris, event: p19, presence_type: "attendee")
nowapapi = Presence.create(entity: nowadays, event: p19, presence_type: "venue")
