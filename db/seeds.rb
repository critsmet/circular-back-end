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

christo = Entity.create(handle: "christo", entity_type: "personal", email: "chrismetzgr@gmail.com", password: "christo")
jesse = Entity.create(handle: "jesse", entity_type: "personal", email: "jesse@gmail.com", password: "jesse")

aa = Event.create(name: "The Godfather - Remastered", date: Time.parse("September 1, 2019, 18:00 America/New_York"), description: "A fresh restoration of The Godfather, screened in a stunning 60mm print with remastered sound, and a new projector bulb ;)!", location: "Film Forum", category: "film", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")

ab = Event.create(name: 'Soul Summit', date: Time.parse("September 1, 2019, 14:00 America/New_York"), description: "Brooklyn's longest running outdoor house party is alive and well in its 15th year! Fort Green, come celebrate.", location: "Fort Greene Park", category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")

ac = Event.create(name: "Herbie Hancock", date: Time.parse("September 1, 2019, 20:00 America/New_York"), description: " One of Jazz's premiere legends performs with his quintet for one night only.", location: "Blue Note", category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")

ad = Event.create(name: "Rufus with Chaka Khan", date: Time.parse("September 1, 2019, 18:00 America/New_York"), description: "The original diva is back and here to reign", location: "Prospect Park Bandshell", category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")

ae = Event.create(name: "J'OUVERT ALL DAY LONG", date: Time.parse("September 2, 2019, 05:00 America/New_York"), description: "The West Indian Day Parade celebrations begin at Grand Army Plaza in the early dawn and go till the evening! Fun for whole family.", location: "Grand Army Plaza, Eastern Parkway", category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")

af = Event.create(name: "Backyard Papi", date: Time.parse("September 2, 2019, 14:00 America/New_York"), description: "This Labor Day, the Papi Juice crew is hosting an all-day jam at our place.", location: "Nowadays", category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")

ag = Event.create(name: "Tigers Are Not Afraid", date: Time.parse("September 3, 2019, 14:00 America/New_York"), description: "Abandoned and alone, ten-year-old Estrella is given three magical wishes. Her first wish is that her missing mother come back, and she does… from the dead. Fearful of the ghost she believes she’s invoked, Estrella escapes to the streets and earns her way into a gang of other children orphaned by Mexico’s brutal drug wars. But soon Estrella discovers you can never really leave the dead behind.", location: "IFC Center", category: "film", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")

# ah = Event.create(name: "Tigers Are Not Afraid", date: Time.parse("September 3, 2019, 16:15 America/New_York"), description: "Abandoned and alone, ten-year-old Estrella is given three magical wishes. Her first wish is that her missing mother come back, and she does… from the dead. Fearful of the ghost she believes she’s invoked, Estrella escapes to the streets and earns her way into a gang of other children orphaned by Mexico’s brutal drug wars. But soon Estrella discovers you can never really leave the dead behind.", location: "IFC Center", category: "film", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")
#
# ai = Event.create(name: "Tigers Are Not Afraid", date: Time.parse("September 3, 2019, 19:00 America/New_York"), description: "Abandoned and alone, ten-year-old Estrella is given three magical wishes. Her first wish is that her missing mother come back, and she does… from the dead. Fearful of the ghost she believes she’s invoked, Estrella escapes to the streets and earns her way into a gang of other children orphaned by Mexico’s brutal drug wars. But soon Estrella discovers you can never really leave the dead behind.", location: "IFC Center", category: "film", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")

aj = Event.create(name: "ISSUE Project Room Presents: J D Emmanuel / James Ferraro / Eve Essex", date: Time.parse("September 5, 2019, 20:00 America/New_York"), description: "ISSUE Project Room's 2019 Fall season opens at the First Unitarian Congregational Society in Brooklyn Heights with renowned Texan electronic minimalist composer J D Emmanuel, auteur composer James Ferraro, and mutli-instrumentalist Eve Essex. Join as an ISSUE Project Room Member at any level and receive a free ticket.", location: "First Unitarian Congregational Society", category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")

ak = Event.create(name: "Gerald's 28th (surprise) Birthday", date: Time.parse("September 5, 2019, 20:30 America/New_York"), description: "Gerald is working overtime on his birthday but we're gonna throw him a surprise party to cheer him up. He gets off at 21:00 so get there early and go straight to the backyard.", location: "Union Pool", category: "gathering", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")

al = Event.create(name: "Abolish ICE Rally", date: Time.parse("September 6, 2019, 18:00 America/New_York"), description: "Part of a collaboration between MACC and Make The Road. Arrive early, we plan to march at 19:00", location: "Foley Square", category: "protest", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")

am = Event.create(name: "MACC Noise Demo", date: Time.parse("September 6, 2019, 21:00 America/New_York"), description: "After the Abolish ICE rally at Foley, walk down the block to MCC. Bring noise makers, bluetooth speakers, and bottles of water to parch your screaming throat.", location: "Metropolitan Correctional Center", category: "protest", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")

an = Event.create(name: "The Four Horseman of the Apocalypse", date: Time.parse("September 6, 2019, 21:00 America/New_York"), description: "1962 / 153min / 35mm

DIRECTOR: VINCENTE MINNELLI

CAST: GLENN FORD, INGRID THULIN, CHARLES BOYER, LEE J. COBB

Rex Ingram’s Rudolph Valentino-starring 1921 anti-war epic, based on Vicente Blasco Ibáñez’s novel, is given a World War II-era setting in Minnelli’s update, which stars Glenn Ford as an Argentinian with French blood who opts to join the Resistance, putting himself at odds with Nazi cousin Karl Boehm. If the picture was to be made, I declared it should be as stunning visually as I could make it. Minnelli said of the assignment, and the baroque results are, to say the least, awe inspiring. Once infamous as a box-office catastrophe, it can now be seen as one of Minnelli’s purest exercises in imagistic storytelling, its depiction of cinematic decadence is arguably a major influence on Visconti, Bertolucci, and others.", location: "Metrograph", category: "film", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")

ao = Event.create(name: "MoMA PopRally × Bronx: Beauteous", date: Time.parse("September 7, 2019, 19:00 America/New_York"), description: "Join us for the third event of MoMA PopRally × New York, a creative journey across New York City. From Staten Island to the Bronx, we’re heading to each of the five boroughs to explore local art, music, food, film, and more while MoMA is temporarily closed for renovations.

On September 7th, PopRally and the Andrew Freedman Home co-present Beauteous, a site-specific immersive theatrical presentation. Beauteous explores issues around perception, community branding, and the dynamics of hype, incorporating narratives of LGBTQ subculture, rap, hip-hop, and DJing to reflect the cultural evolution of the Bronx. Guests will experience this imagined urban future through theatrical vignettes, musical performances, and art installations set amidst the faded glamor of a Gilded Age mansion located on the Grand Concourse in the Bronx. The evening will commence with food and music in the garden and culminate in a roof-top party with DJ sets.

Tickets are $10 in advance and $15 at the door. Food and drinks will be available for purchase. Beer is provided by Five Boroughs Brewing Co. Garden festivities begin at 7:00 p.m., with doors to the performance opening at 8:00 p.m. and rooftop DJ sets beginning at 10:00 p.m.

Stay tuned for more about our next event, in Brooklyn!", location: "TBD", category: "performance", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")

ap = Event.create(name: "Fist Church", date: Time.parse("September 7, 2019, 20:00 America/New_York"), description: "The 70’s, 80’s, and even into the early 90’s were a wonderful time when a boy or girl could sit down in front of their TV set after Saturday morning cartoons and tune into their local UHF station to catch a helping of hundreds of Kung Fu Matinees, or if you were a bit older and lived in the New York City area, you could go to one of the many infamous Times Square theaters and do the same (while enjoying some PCP if that was your thing).", location: "Spectacle Theatre", category: "film", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")

aq = Event.create(name: "Melting Point: Immigration Benefit with Physical Therapy, Lsdxoxo, Zakmatic, YAN KIN", date: Time.parse("September 7, 2019, 22:00 America/New_York"), description: "Dance to dark, edgy electronics for a good cause. Proceeds will go to Al Otro Lado, a non-profit that provides legal defense and resources to people seeking asylum in the US.", location: "Market Hotel", category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")

ar = Event.create(name: "Melting Point: Immigration Benefit with Physical Therapy, Lsdxoxo, Zakmatic, YAN KIN", date: Time.parse("September 7, 2019, 22:00 America/New_York"), description: "Dance to dark, edgy electronics for a good cause. Proceeds will go to Al Otro Lado, a non-profit that provides legal defense and resources to people seeking asylum in the US.", location: "Market Hotel", category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")
# nowadays = Entity.create(handle: "nowadays", entity_type: "venue", email: "nowadays@gmail.com", password: "123")
# elsewhere = Entity.create(handle: "elsewhere", entity_type: "venue", email: "elsewhere@gmail.com", password: "123", name: "Elsewhere")
# #venues should have a handle, see the event serializer
# papijuice = Entity.create(handle: "papijuicebk", entity_type: "collective", email: "papijuice.com", password: "123")

# Subscription.create(subscriber: chris, subscribed: nowadays)
# Subscription.create(subscriber: chris, subscribed: papijuice)
# Subscription.create(subscriber: chris, subscribed: oscar)
# Subscription.create(subscriber: oscar, subscribed: chris)
#
# p1 = Event.create(name: "Fruity Papi", date: Time.parse("July 9, 2019, 10PM America/New_York"), description: "Such a good time", location: nil, category: "music", image_url: "https://scontent-ber1-1.cdninstagram.com/vp/b7c645470c7efcec734ffbbcd986467d/5DC3EA99/t51.2885-15/e35/p1080x1080/61233742_139792527195129_4990612361767943016_n.jpg?_nc_ht=scontent-ber1-1.cdninstagram.com")
# p2 = Event.create(name: "Rave", date: Time.parse("July 9, 2019, 11PM America/New_York"), description: "Weekday rave!", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")
# p3 = Event.create(name: "Shindig", date: Time.parse("July 10, 2019, 2PM America/New_York"), description: "Something coool", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219877/original_d342624d1b1e3b883d9d6b302ecb66e4?1395698246")
# p4 = Event.create(name: "Fruity Papi", date: Time.parse("July 10, 2019, 3PM America/New_York"), description: "Such a good time", location: nil, category: "music", image_url: "https://scontent-ber1-1.cdninstagram.com/vp/b7c645470c7efcec734ffbbcd986467d/5DC3EA99/t51.2885-15/e35/p1080x1080/61233742_139792527195129_4990612361767943016_n.jpg?_nc_ht=scontent-ber1-1.cdninstagram.com")
# p5 = Event.create(name: "Rave", date: Time.parse("July 11, 2019, 5PM America/New_York"), description: "Weekday rave!", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")
# p6 = Event.create(name: "Shindig", date: Time.parse("July 11, 2019, 7PM America/New_York"), description: "Something coool", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219877/original_d342624d1b1e3b883d9d6b302ecb66e4?1395698246")
# p7 = Event.create(name: "Fruity Papi", date: Time.parse("July 3, 2019, 9AM America/New_York"), description: "Such a good time", location: nil, category: "music", image_url: "https://scontent-ber1-1.cdninstagram.com/vp/b7c645470c7efcec734ffbbcd986467d/5DC3EA99/t51.2885-15/e35/p1080x1080/61233742_139792527195129_4990612361767943016_n.jpg?_nc_ht=scontent-ber1-1.cdninstagram.com")
# p8 = Event.create(name: "Rave", date: Time.parse("July 12, 2019, 10AM America/New_York"), description: "Weekday rave!", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")
# p9 = Event.create(name: "Shindig", date: Time.parse("July 12, 2019, 1PM America/New_York"), description: "Something coool", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219877/original_d342624d1b1e3b883d9d6b302ecb66e4?1395698246")
# p10 = Event.create(name: "Fruity Papi", date: Time.parse("July 13, 2019, 2PM America/New_York"), description: "Such a good time", location: nil, category: "music", image_url: "https://scontent-ber1-1.cdninstagram.com/vp/b7c645470c7efcec734ffbbcd986467d/5DC3EA99/t51.2885-15/e35/p1080x1080/61233742_139792527195129_4990612361767943016_n.jpg?_nc_ht=scontent-ber1-1.cdninstagram.com")
# p11 = Event.create(name: "Rave", date: Time.parse("July 13, 2019, 9PM America/New_York"), description: "Weekday rave!", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")
# p12 = Event.create(name: "Shindig", date: Time.parse("July 14, 2019, 8PM America/New_York"), description: "Something coool", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219877/original_d342624d1b1e3b883d9d6b302ecb66e4?1395698246")
# p13 = Event.create(name: "Fruity Papi", date: Time.parse("July 14, 2019, 11PM America/New_York"), description: "Such a good time", location: nil, category: "music", image_url: "https://scontent-ber1-1.cdninstagram.com/vp/b7c645470c7efcec734ffbbcd986467d/5DC3EA99/t51.2885-15/e35/p1080x1080/61233742_139792527195129_4990612361767943016_n.jpg?_nc_ht=scontent-ber1-1.cdninstagram.com")
# p14 = Event.create(name: "Rave", date: Time.parse("July 15, 2019, 12AM America/New_York"), description: "Weekday rave!", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")
# p15 = Event.create(name: "Shindig", date: Time.parse("July 15, 2019, 1PM America/New_York"), description: "Something coool", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219877/original_d342624d1b1e3b883d9d6b302ecb66e4?1395698246")
# p16 = Event.create(name: "Fruity Papi", date: Time.parse("July 16, 2019, 6PM America/New_York"), description: "Such a good time", location: nil, category: "music", image_url: "https://scontent-ber1-1.cdninstagram.com/vp/b7c645470c7efcec734ffbbcd986467d/5DC3EA99/t51.2885-15/e35/p1080x1080/61233742_139792527195129_4990612361767943016_n.jpg?_nc_ht=scontent-ber1-1.cdninstagram.com")
# p17 = Event.create(name: "Shindig", date: Time.parse("July 16, 2019, 8PM America/New_York"), description: "Something coool", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219877/original_d342624d1b1e3b883d9d6b302ecb66e4?1395698246")
# p18 = Event.create(name: "Fruity Papi", date: Time.parse("July 17, 2019, 9PM America/New_York"), description: "Such a good time", location: nil, category: "music", image_url: "https://scontent-ber1-1.cdninstagram.com/vp/b7c645470c7efcec734ffbbcd986467d/5DC3EA99/t51.2885-15/e35/p1080x1080/61233742_139792527195129_4990612361767943016_n.jpg?_nc_ht=scontent-ber1-1.cdninstagram.com")
# p19 = Event.create(name: "Rave", date: Time.parse("July 17, 2019, 10PM America/New_York"), description: "Weekday rave!", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219880/large_747876ed6a7eb0b5e7cf9fe4436e935f.jpg?1395698293")
# p20 = Event.create(name: "Shindig", date: Time.parse("July 10, 2019, 11PM America/New_York"), description: "Something coool", location: nil, category: "music", image_url: "https://d2w9rnfcy7mm78.cloudfront.net/219877/original_d342624d1b1e3b883d9d6b302ecb66e4?1395698246")

# oscarpapi = Presence.create(entity: oscar, event: p1, presence_type: "organizer")
# chrispapi = Presence.create(entity: chris, event: p1, presence_type: "attendee")
# nowapapi = Presence.create(entity: nowadays, event: p1, presence_type: "venue")
# elsepapi = Presence.create(entity: elsewhere, event: p1, presence_type: "venue")
#
# oscarpapi = Presence.create(entity: oscar, event: p2, presence_type: "organizer")
# chrispapi = Presence.create(entity: chris, event: p2, presence_type: "attendee")
# nowapapi = Presence.create(entity: nowadays, event: p2, presence_type: "venue")
#
# oscarpapi = Presence.create(entity: chris, event: p20, presence_type: "organizer")
# chrispapi = Presence.create(entity: oscar, event: p20, presence_type: "attendee")
# nowapapi = Presence.create(entity: nowadays, event: p20, presence_type: "venue")
#
# oscarpapi = Presence.create(entity: oscar, event: p3, presence_type: "organizer")
# chrispapi = Presence.create(entity: chris, event: p3, presence_type: "attendee")
# nowapapi = Presence.create(entity: nowadays, event: p3, presence_type: "venue")
#
# oscarpapi = Presence.create(entity: oscar, event: p4, presence_type: "organizer")
# chrispapi = Presence.create(entity: chris, event: p4, presence_type: "attendee")
# nowapapi = Presence.create(entity: nowadays, event: p4, presence_type: "venue")
#
# oscarpapi = Presence.create(entity: oscar, event: p5, presence_type: "organizer")
# chrispapi = Presence.create(entity: chris, event: p5, presence_type: "attendee")
# nowapapi = Presence.create(entity: nowadays, event: p5, presence_type: "venue")
#
# oscarpapi = Presence.create(entity: oscar, event: p6, presence_type: "organizer")
# chrispapi = Presence.create(entity: chris, event: p6, presence_type: "attendee")
# nowapapi = Presence.create(entity: nowadays, event: p6, presence_type: "venue")
#
# oscarpapi = Presence.create(entity: oscar, event: p7, presence_type: "organizer")
# chrispapi = Presence.create(entity: chris, event: p7, presence_type: "attendee")
# nowapapi = Presence.create(entity: nowadays, event: p7, presence_type: "venue")
#
# oscarpapi = Presence.create(entity: oscar, event: p8, presence_type: "organizer")
# chrispapi = Presence.create(entity: chris, event: p8, presence_type: "attendee")
# nowapapi = Presence.create(entity: nowadays, event: p8, presence_type: "venue")
#
# oscarpapi = Presence.create(entity: oscar, event: p9, presence_type: "organizer")
# chrispapi = Presence.create(entity: chris, event: p9, presence_type: "attendee")
# nowapapi = Presence.create(entity: nowadays, event: p9, presence_type: "venue")
#
# oscarpapi = Presence.create(entity: oscar, event: p10, presence_type: "organizer")
# chrispapi = Presence.create(entity: chris, event: p10, presence_type: "attendee")
# nowapapi = Presence.create(entity: nowadays, event: p10, presence_type: "venue")
#
# oscarpapi = Presence.create(entity: oscar, event: p12, presence_type: "organizer")
# chrispapi = Presence.create(entity: chris, event: p12, presence_type: "attendee")
# nowapapi = Presence.create(entity: nowadays, event: p12, presence_type: "venue")
#
# oscarpapi = Presence.create(entity: oscar, event: p13, presence_type: "organizer")
# chrispapi = Presence.create(entity: chris, event: p13, presence_type: "attendee")
# nowapapi = Presence.create(entity: nowadays, event: p13, presence_type: "venue")
#
# oscarpapi = Presence.create(entity: oscar, event: p14, presence_type: "organizer")
# chrispapi = Presence.create(entity: chris, event: p14, presence_type: "attendee")
# nowapapi = Presence.create(entity: nowadays, event: p14, presence_type: "venue")
#
# oscarpapi = Presence.create(entity: oscar, event: p15, presence_type: "organizer")
# chrispapi = Presence.create(entity: chris, event: p15, presence_type: "attendee")
# nowapapi = Presence.create(entity: nowadays, event: p15, presence_type: "venue")
#
# oscarpapi = Presence.create(entity: oscar, event: p16, presence_type: "organizer")
# chrispapi = Presence.create(entity: chris, event: p16, presence_type: "attendee")
# nowapapi = Presence.create(entity: nowadays, event: p16, presence_type: "venue")
#
# oscarpapi = Presence.create(entity: oscar, event: p17, presence_type: "organizer")
# chrispapi = Presence.create(entity: chris, event: p17, presence_type: "attendee")
# nowapapi = Presence.create(entity: nowadays, event: p17, presence_type: "venue")
#
# oscarpapi = Presence.create(entity: oscar, event: p18, presence_type: "organizer")
# chrispapi = Presence.create(entity: chris, event: p18, presence_type: "attendee")
# nowapapi = Presence.create(entity: nowadays, event: p18, presence_type: "venue")
#
# oscarpapi = Presence.create(entity: oscar, event: p19, presence_type: "organizer")
# chrispapi = Presence.create(entity: chris, event: p19, presence_type: "attendee")
# nowapapi = Presence.create(entity: nowadays, event: p19, presence_type: "venue")
