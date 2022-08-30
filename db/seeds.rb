# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require "open-uri"

puts "Destroying existing seeds"

User.destroy_all
Bottle.destroy_all
Event.destroy_all
Booking.destroy_all


puts "Creating users..."

user1 = User.create!(
  first_name: 'Julien',
  last_name: 'Bardy',
  email: 'julien.bardy@gmail.com',
  password: 'JulienB',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
)

user2 = User.create!(
  first_name: 'Maria',
  last_name: 'Cabrero',
  email: 'maria.cabrero@gmail.com',
  password: 'MariaC',
  address: '8 passage de la Poule Noire, Nantes 44000',
)

user3 = User.create!(
  first_name: 'Jean',
  last_name: 'Dupont',
  email: 'jean.dupont@gmail.com',
  password: 'JeanDu',
  address: '12 rue Paul Bellamy, Nantes 44000',
)














puts "Creating bottles..."

côte_roannaise = Bottle.create!(

  name:'',
  country: 'France',
  region: 'Loire',
  appelation: 'Côte_roannaise',
  domaine_name: '',
  producer: '',
  color: 'rouge',
  comment:,
  vintage: '',
  price: '',
  pic_url:'',
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
  vintage: '',
  price: '',
  pic_url: '',
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
  vintage: '',
  price: '',
  pic_url: '',
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
  vintage: '',
  price: '',
  pic_url: '',
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
  vintage: '',
  price: '',
  pic_url: '',
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
  vintage: '',
  price: 'pétillant',
  pic_url: '',
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
  vintage: '',
  price: '',
  pic_url: '',
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
  vintage: '',
  price: '',
  pic_url: '',
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
  vintage: '',
  price: '',
  pic_url: '',
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
  vintage: '',
  price: '',
  pic_url: '',
)

coteaux_du_layon grand cru quarts_de_chaume = Bottle.create!(

  name: '',
  country: 'France',
  region: 'Loire',
  appelation: 'Coteaux-du-layon grand cru Quarts de Chaume',
  domaine_name: '',
  producer: '',
  color: 'white',
  comment: '',
  vintage: '',
  price: '',
  pic_url: '',
)

muscadet_sèvre_et_maine = Bottle.create!(

  name: '',
  country: 'France',
  region: 'Loire',
  appelation: 'Muscadet Sèvre-et-Maine',
  domaine_name: '',
  producer: '',
  color: 'blanc',
  comment:,
  vintage: '',
  price: '',
  pic_url:'',
)











puts "Creating events..."


loire = Event.create!(

  name: 'descente de la loire en pinard',
  description: "Je vous invite dans mon jardin, sous le pont de cheviré pour une descente de la loire par ses pinards : du côte roannaise en Auvergne jusqu'à notre Muscadet local",
  address: "49 quai Émile Cormerais, 44800 Saint-Herblain",
  date: '10 septembre 2022 à 18:00',
  category: 'loire',
  level: 'débutant, intermédiare, confirmé',
  host_request: '1 côte-roannaise et 1 muscadet-sèvre-et-maine',
  max_number_guest: 12,
  price_range: 'min_price (8) et max_price (12)',
  pic_url:
)


champagne = Event.create!(

  name: "Saint-Sylvestre aux 12 champagnes",
  description:'',
  address:'',
  date: '',
  category: '',
  level: '',
  host_request: '',
  max_number_gues: '',
  price_range: '',
  pic_url: '',
)

alsace_lorraine = Event.create!(

  name: "retour de route des vins alsaciens",
  description: '',
  address: '',
  date: '',
  category: '',
  level: '',
  host_request: '',
  max_number_gues: '',
  price_range: '',
  pic_url: '',
)

bourgogne = Event.create!(

  name: 'nuit blanche au côte de nuits',
  description: '',
  address: '',
  date: '',
  category: '',
  level: '',
  host_request: '',
  max_number_gues: '',
  price_range: '',
  pic_url: '',
)

jura_savoie_bugey = Event.create!(

  name: 'dégustation des vins de nos montagnes',
  description: '',
  address: '',
  date: '',
  category: '',
  level: '',
  host_request: '',
  max_number_gues: '',
  price_range: '',
  pic_url: '',
)

beaujolais = Event.create!(

  name: 'soirée beaujolais pas nouveau',
  description: '',
  address: '',
  date: '',
  category: '',
  level: '',
  host_request: '',
  max_number_gues: '',
  price_range: '',
  pic_url: '',
)

vallée_du_rhône = Event.create!(

  name: 'vallée du rhône méridonale et charcuterie',
  description: '',
  address: '',
  date: '',
  category: '',
  level: '',
  host_request: '',
  max_number_gues: '',
  price_range: '',
  pic_url: '',
)

corse = Event.create!(

  name: 'vins corsés et fromages qui puent',
  description:  '',
  address: '',
  date: '',
  category: '',
  level: '',
  host_request: '',
  max_number_gues: '',
  price_range: '',
  pic_url: '',
)

provence = Event.create!(

  name: 'pic-nique arrosé aux vins de provence',
  description: '',
  address: '',
  date: '',
  category: '',
  level: '',
  host_request: '',
  max_number_gues: '',
  price_range: '',
  pic_url: '',
)

languedoc_roussillon = Event.create!(

  name: 'dégustation de nos vins du Roussillon',
  description: '',
  address: '',
  date: '',
  category: '',
  level: '',
  host_request: '',
  max_number_gues: '',
  price_range: '',
  pic_url: '',
)

sud_ouest = Event.create!(

  name: 'garden party et vins de notre pays basque',
  description: '',
  address: '',
  date: '',
  category: '',
  level: '',
  host_request: '',
  max_number_gues: '',
  price_range: '',
  pic_url: '',
)

bordeaux = Event.create!(

  name: "dégustation premium d'entre-deux-mers",
  description: '',
  address: '',
  date: '',
  category: '',
  level: '',
  host_request: '',
  max_number_gues: '',
  price_range: '',
  pic_url: '',
)








puts "Creating bookings..."

event = Booking.create!(

  comment: '',
  status:'',
)
