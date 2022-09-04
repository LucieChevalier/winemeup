# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts "Destroying existing seeds"

Bottle.destroy_all
Booking.destroy_all
Event.destroy_all
User.destroy_all

puts "Creating users..."

user1 = User.create!(
  first_name: 'Julien',
  last_name: 'Bardy',
  email: 'julien.bardy@gmail.com',
  password: '123456',
  address: '49 quai Émile Cormerais',
  level: 'Novice',
  postal_code: '44800',
  city: 'Saint-Herblain'
)

file = URI.open("https://www.feter-recevoir.com/upload/image/deguisement-pikachu-bebe-p-image-178360-grande.jpg")
user1.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
user1.save

user2 = User.create!(
  first_name: 'Maria',
  last_name: 'Cabrero',
  email: 'maria.cabrero@gmail.com',
  password: '123456',
  address: '8 passage de la Poule Noire',
  level: 'Intermédiaire',
  postal_code: '44000',
  city: 'Nantes'

)
file = URI.open("https://www.feter-recevoir.com/upload/image/deguisement-pikachu-bebe-p-image-178360-grande.jpg")
user2.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
user2.save

user3 = User.create!(
  first_name: 'Jean',
  last_name: 'Dupont',
  email: 'jean.dupont@gmail.com',
  password: '123456',
  address: '12 rue Paul Bellamy',
  level: 'Expert',
  postal_code: '44000',
  city: 'Nantes'

)
file = URI.open("https://www.feter-recevoir.com/upload/image/deguisement-pikachu-bebe-p-image-178360-grande.jpg")
user3.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
user3.save

user4 = User.create!(
  first_name: 'Alice',
  last_name: 'Hay',
  email: 'alice.hay@gmail.com',
  password: '123456',
  address: '33 rue Saint-Léonard',
  level: 'Novice',
  postal_code: '44000',
  city: 'Nantes'

)
file = URI.open("https://www.feter-recevoir.com/upload/image/deguisement-pikachu-bebe-p-image-178360-grande.jpg")
user4.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
user4.save

user5 = User.create!(
  first_name: 'Thierry',
  last_name: 'Dabo',
  email: 'thierry.dabo@gmail.com',
  password: '123456',
  address: '2 place Aristide Briand',
  level: 'Intermédiaire',
  postal_code: '44000',
  city: 'Nantes'

)
file = URI.open("https://www.feter-recevoir.com/upload/image/deguisement-pikachu-bebe-p-image-178360-grande.jpg")
user5.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
user5.save

user6 = User.create!(
  first_name: 'Alex',
  last_name: 'Plantey',
  email: 'alex.plantey@gmail.com',
  password: '123456',
  address: '11 avenue de Normandie',
  level: 'Expert',
  postal_code: '44300',
  city: 'Nantes'

)
file = URI.open("https://www.feter-recevoir.com/upload/image/deguisement-pikachu-bebe-p-image-178360-grande.jpg")
user6.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
user6.save

user7 = User.create!(
  first_name: 'Vincent',
  last_name: 'Briat',
  email: 'vincent.briat@bouygues.fr',
  password: '123456',
  address: '12 rue Paul Bellamy',
  level: 'Novice',
  postal_code: '44200',
  city: 'Nantes'

)
file = URI.open("https://www.feter-recevoir.com/upload/image/deguisement-pikachu-bebe-p-image-178360-grande.jpg")
user7.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
user7.save

user8 = User.create!(
  first_name: 'Nicolas',
  last_name: 'Ramtoula',
  email: 'nicolas.ramtoula@orange.fr',
  password: '123456',
  address: "4 rue de la tour d'auvergne",
  level: 'Intermédiaire',
  postal_code: '44200',
  city: 'Nantes'

)
file = URI.open("https://www.feter-recevoir.com/upload/image/deguisement-pikachu-bebe-p-image-178360-grande.jpg")
user8.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
user8.save

user9 = User.create!(
  first_name: 'Bertand',
  last_name: 'Lefort',
  email: 'bertand.lefort@free.fr',
  password: '123456',
  address: '198 rue du Général Buat',
  level: 'Expert',
  postal_code: '44109',
  city: 'Nantes'

)
file = URI.open("https://www.feter-recevoir.com/upload/image/deguisement-pikachu-bebe-p-image-178360-grande.jpg")
user9.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
user9.save

user10 = User.create!(
  first_name: 'Laure',
  last_name: 'Carette',
  email: 'laure.carette@gmail.com',
  password: '123456',
  address: '21 allé des Tanneurs',
  level: 'Novice',
  postal_code: '44000',
  city: 'Nantes'

)
file = URI.open("https://www.feter-recevoir.com/upload/image/deguisement-pikachu-bebe-p-image-178360-grande.jpg")
user10.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
user10.save


user11 = User.create!(
  first_name: 'Albert',
  last_name: 'Gilbert',
  email: 'albert.gilbert@gmail.com',
  password: '123456',
  address: '12 villa de la Renaissance',
  level: 'Intermédiaire',
  postal_code: '75019',
  city: 'Paris'

)
file = URI.open("https://www.feter-recevoir.com/upload/image/deguisement-pikachu-bebe-p-image-178360-grande.jpg")
user11.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
user11.save


user12 = User.create!(
  first_name: 'Patrick',
  last_name: 'Gaussent',
  email: 'patrick.gaussent@gmail.com',
  password: '123456',
  address: "2 rue de l'Arbre sec",
  level: 'Expert',
  postal_code: '69000',
  city: 'Lyon'

)
file = URI.open("https://www.feter-recevoir.com/upload/image/deguisement-pikachu-bebe-p-image-178360-grande.jpg")
user12.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
user12.save
















puts "Creating events..."

loire = Event.create!(
  name: 'descente de la loire en pinard',
  description: "Soyez les bienvenus dans mon jardin, sous le pont de cheviré pour une descente de la loire par ses pinards : du côte roannaise en Auvergne jusqu'à notre Muscadet local",
  address: "49 quai Émile Cormerais, 44800 Saint-Herblain",
  date: Date.parse('3rd Feb 2022'),
  time: Time.parse('08:30'),
  category: "Loire",
  level: 'Novice',
  host_request: '1 côte-roannaise et 1 muscadet-sèvre-et-maine',
  max_number_guest: 12,
  min_price: 8,
  max_price: 12,
  host: user1
)




champagne = Event.create!(
  name: "Saint-Sylvestre aux 12 champagnes",
  description:'',
  address:'49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('3rd Nov 2022'),
  time: Time.parse('08:30'),
  category: "Champagne",
  level: 'Novice',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)



alsace_lorraine = Event.create!(
  name: "retour de route des vins alsaciens",
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('3rd Nov 2022'),
  time: Time.parse('08:30'),
  category: "Alsace-Lorraine",
  level: 'Novice',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)


bourgogne = Event.create!(
  name: 'nuit blanche au côte de nuits',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('3rd Nov 2022'),
  time: Time.parse('17:30'),
  category: "Bourgogne",
  level: 'Novice',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user2
)


jura_savoie_bugey = Event.create!(
  name: 'dégustation des vins de nos montagnes',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('3rd Nov 2022'),
  time: Time.parse('17:30'),
  category: "Jura-Bugey-Savoie",
  level: 'Novice',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user2
)


beaujolais = Event.create!(
  name: 'soirée beaujolais pas nouveau',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('3rd Nov 2022'),
  time: Time.parse('17:30'),
  category: "Beaujolais",
  level: 'Novice',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user2
)


vallee_du_rhone = Event.create!(
  name: 'vallée du rhône méridonale et charcuterie',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('3rd Feb 2022'),
  time: Time.parse('17:30'),
  category: "Rhône",
  level: 'Novice',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user3
)


corse = Event.create!(
  name: 'vins corsés et fromages qui puent',
  description:  '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('3rd Feb 2022'),
  time: Time.parse('08:30'),
  category: "Corse",
  level: 'Novice',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user3
)


provence = Event.create!(
  name: 'pic-nique arrosé aux vins de provence',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('3rd Feb 2022'),
  time: Time.parse('08:30'),
  category: "Provence",
  level: 'Novice',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user3
)


languedoc_roussillon = Event.create!(
  name: 'dégustation de nos vins du Roussillon',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('3rd Feb 2022'),
  time: Time.parse('08:30'),
  category: "Languedoc-Roussillon",
  level: 'Novice',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user4
)


sud_ouest = Event.create!(
  name: 'garden party et vins de notre pays basque',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('3rd Feb 2022'),
  time: Time.parse('08:30'),
  category: "Sud-Ouest",
  level: 'Intermédiaire',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user4
)


bordeaux = Event.create!(
  name: "dégustation premium d'entre-deux-mers",
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('3rd Feb 2022'),
  time: Time.parse('08:30'),
  category: "Bordeaux",
  level: 'Expert',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user4
)






























puts "Creating bottles..."

cote_roannaise = Bottle.create!(
  name:'',
  country: 'France',
  region: 'Loire',
  appelation: 'Côte_roannaise',
  domaine_name: '',
  producer: '',
  color: 'rouge',
  comment: '',
  vintage: 2008,
  price: '',
  event: loire,
  user: user2
)


sancerre = Bottle.create!(
  name:'',
  country: 'France',
  region: 'Loire',
  appelation: 'Sancerre',
  domaine_name: '',
  producer: '',
  color: 'blanc',
  comment: '',
  vintage: 2008,
  price: '',
  event: loire,
  user: user2
)

quincy = Bottle.create!(
  name: '',
  country: 'France',
  region: 'Loire',
  appelation: 'Quincy',
  domaine_name: '',
  producer: '',
  color: 'blanc',
  comment: '',
  vintage: 2008,
  price: '',
  event: loire,
  user: user2
)

pouilly_fumé = Bottle.create!(
  name: '',
  country: 'France',
  region: 'Loire',
  appelation: 'Pouilly-Fumé',
  domaine_name: '',
  producer: '',
  color: 'blanc',
  comment: '',
  vintage: 2008,
  price: '',
  event: loire,
  user: user2
)

menetou_salon = Bottle.create!(
  name: '',
  country: 'France',
  region: 'Loire',
  appelation: 'Menetou-Salon',
  domaine_name: '',
  producer: '',
  color: 'blanc',
  comment: '',
  vintage: 2008,
  price: '',
  event: loire,
  user: user2
)

vouvray = Bottle.create!(
  name: '',
  country: 'France',
  region: 'Loire',
  appelation: 'Vouvray',
  domaine_name: '',
  producer: '',
  color: '',
  comment: '',
  vintage: 2008,
  price: 'pétillant',
  event: loire,
  user: user2
)

chinon = Bottle.create!(
  name: '',
  country: 'France',
  region: 'Loire',
  appelation: 'Chinon',
  domaine_name: '',
  producer: '',
  color: 'rouge',
  comment: '',
  vintage: 2008,
  price: '',
  event: loire,
  user: user2
)

bourgueil = Bottle.create!(
  name: '',
  country: 'France',
  region: 'Loire',
  appelation: 'Bourgueil',
  domaine_name: '',
  producer: '',
  color: 'rouge',
  comment: '',
  vintage: 2008,
  price: '',
  event: loire,
  user: user2
)

savenières_coulée_de_serrant = Bottle.create!(
  name: '',
  country: 'France',
  region: 'Loire',
  appelation: 'Savenières-Coulée_de_Serrant ',
  domaine_name: '',
  producer: '',
  color: 'blanc',
  comment: '',
  vintage: 2008,
  price: '',
  event: loire,
  user: user2
)

saumur_champigny = Bottle.create!(
  name: '',
  country: 'France',
  region: 'Loire',
  appelation: 'Saumur-Champigny',
  domaine_name: '',
  producer: '',
  color: 'rouge',
  comment: '',
  vintage: 2008,
  price: '',
  event: loire,
  user: user2
)

coteaux_du_layon_grand_cru_quarts_de_chaume = Bottle.create!(
  name: '',
  country: 'France',
  region: 'Loire',
  appelation: 'Coteaux-du-layon grand cru Quarts de Chaume',
  domaine_name: '',
  producer: '',
  color: 'white',
  comment: '',
  vintage: 2008,
  price: '',
  event: loire,
  user: user2
)

muscadet_sèvre_et_maine = Bottle.create!(
  name: '',
  country: 'France',
  region: 'Loire',
  appelation: 'Muscadet Sèvre-et-Maine',
  domaine_name: '',
  producer: '',
  color: 'blanc',
  comment: '',
  vintage: 2008,
  price: '',
  event: loire,
  user: user2
)












puts "Creating bookings..."

booking_1 = Booking.create!(
  status: 'Upcoming',
  comment: '',
  guest: user5,
  event: loire
)

booking_2 = Booking.create!(
  status: 'Upcoming',
  comment: '',
  guest: user6,
  event: bourgogne
)

booking_3 = Booking.create!(
  status: 'Upcoming',
  comment: '',
  guest: user7,
  event: loire
)

booking_4 = Booking.create!(
  status: 'Upcoming',
  comment: '',
  guest: user8,
  event: champagne
)

  booking_5 = Booking.create!(
  status: 'Upcoming',
  comment: '',
  guest: user9,
  event: champagne
)

booking_6 = Booking.create!(
  status: 'Past',
  comment: '',
  guest: user10,
  event: bourgogne
)

puts "Finished"
