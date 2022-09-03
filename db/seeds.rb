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
  password: 'JulienB',
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
  password: 'MariaC',
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
  password: 'JeanDu',
  address: '12 rue Paul Bellamy',
  level: 'Expert',
  postal_code: '44000',
  city: 'Nantes'

)
file = URI.open("https://www.feter-recevoir.com/upload/image/deguisement-pikachu-bebe-p-image-178360-grande.jpg")
user3.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
user3.save

puts "Creating events..."

loire_test = Event.create!(
  name: 'test',
  description: "test",
  address: "test",
  date: Date.parse('3rd Feb 2022'),
  time: Time.parse('08:30'),
  category: 'Loire',
  level: 'Novice',
  host_request: 'test',
  max_number_guest: 12,
  min_price: 8,
  max_price: 12,
  host: user1
)

loire = Event.create!(
  name: 'descente de la loire en pinard',
  description: "Je vous invite dans mon jardin, sous le pont de cheviré pour une descente de la loire par ses pinards : du côte roannaise en Auvergne jusqu'à notre Muscadet local",
  address: "49 quai Émile Cormerais, 44800 Saint-Herblain",
  date: Date.parse('3rd Feb 2022'),
  time: Time.parse('08:30'),
  category: 'Loire',
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
  category: 'Loire',
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
  category: 'Loire',
  level: 'Novice',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user3
)


bourgogne = Event.create!(
  name: 'nuit blanche au côte de nuits',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('3rd Nov 2022'),
  time: Time.parse('17:30'),
  category: 'Loire',
  level: 'Novice',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)


jura_savoie_bugey = Event.create!(
  name: 'dégustation des vins de nos montagnes',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('3rd Nov 2022'),
  time: Time.parse('17:30'),
  category: 'Loire',
  level: 'Novice',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)


beaujolais = Event.create!(
  name: 'soirée beaujolais pas nouveau',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('3rd Nov 2022'),
  time: Time.parse('17:30'),
  category: 'Loire',
  level: 'Novice',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)


vallee_du_rhone = Event.create!(
  name: 'vallée du rhône méridonale et charcuterie',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('3rd Feb 2022'),
  time: Time.parse('17:30'),
  category: 'Loire',
  level: 'Novice',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)


corse = Event.create!(
  name: 'vins corsés et fromages qui puent',
  description:  '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('3rd Feb 2022'),
  time: Time.parse('08:30'),
  category: 'Loire',
  level: 'Novice',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)


provence = Event.create!(
  name: 'pic-nique arrosé aux vins de provence',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('3rd Feb 2022'),
  time: Time.parse('08:30'),
  category: 'Loire',
  level: 'Novice',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)


languedoc_roussillon = Event.create!(
  name: 'dégustation de nos vins du Roussillon',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('3rd Feb 2022'),
  time: Time.parse('08:30'),
  category: 'Loire',
  level: 'Novice',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)


sud_ouest = Event.create!(
  name: 'garden party et vins de notre pays basque',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('3rd Feb 2022'),
  time: Time.parse('08:30'),
  category: 'Loire',
  level: 'Novice',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)


bordeaux = Event.create!(
  name: "dégustation premium d'entre-deux-mers",
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('3rd Feb 2022'),
  time: Time.parse('08:30'),
  category: 'Loire',
  level: 'Expert',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
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
  guest: user3,
  event: loire
)

booking_2 = Booking.create!(
  status: 'Upcoming',
  comment: '',
  guest: user3,
  event: bourgogne
)

booking_3 = Booking.create!(
  status: 'Upcoming',
  comment: '',
  guest: user2,
  event: loire
)

booking_4 = Booking.create!(
  status: 'Upcoming',
  comment: '',
  guest: user3,
  event: champagne
)

  booking_5 = Booking.create!(
  status: 'Upcoming',
  comment: '',
  guest: user2,
  event: champagne
)

booking_6 = Booking.create!(
  status: 'Past',
  comment: '',
  guest: user2,
  event: bourgogne
)

puts "Finished"
