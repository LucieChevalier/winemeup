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

loire = Event.create!(
  name: 'descente de la loire en pinard',
  description: "Je vous invite dans mon jardin, sous le pont de cheviré pour une descente de la loire par ses pinards : du côte roannaise en Auvergne jusqu'à notre Muscadet local",
  address: "49 quai Émile Cormerais, 44800 Saint-Herblain",
  date: '10 septembre 2022',
  category: 'Loire',
  level: 'Débutant',
  host_request: '1 côte-roannaise et 1 muscadet-sèvre-et-maine',
  max_number_guest: 12,
  min_price: 8,
  max_price: 12,
  host: user1
)

file = URI.open("https://cap.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fcap.2F2019.2F08.2F04.2Fa843fc6f-5f7c-43e3-aec0-89f62c93a745.2Ejpeg/1200x630/background-color/ffffff/quality/70/dormez-comme-un-roi-et-sauvez-le-chateau-de-chambord-1346662.jpg")
loire.photo.attach(io: file, filename: "loire.png", content_type: "image/png")
loire.save


champagne = Event.create!(
  name: "Saint-Sylvestre aux 12 champagnes",
  description:'',
  address:'49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: '10 septembre 2022',
  category: 'Loire',
  level: 'Débutant',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)

file = URI.open("https://cdn.aveine.paris/blog/wp-content/uploads/2021/06/09141104/Tour-de-France-regions-viticoles-Cave-Champagne.jpg")
champagne.photo.attach(io: file, filename: "champagne.png", content_type: "image/png")
champagne.save

alsace_lorraine = Event.create!(
  name: "retour de route des vins alsaciens",
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: '10 septembre 2022',
  category: 'Loire',
  level: 'Débutant',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)
file = URI.open("https://cdn.aveine.paris/blog/wp-content/uploads/2021/06/09142030/Tour-de-France-regions-viticoles-Route-des-vins-Alsace.jpg")
alsace_lorraine.photo.attach(io: file, filename: "alsace-lorraine.png", content_type: "image/png")
alsace_lorraine.save

bourgogne = Event.create!(
  name: 'nuit blanche au côte de nuits',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: '10 septembre 2022',
  category: 'Loire',
  level: 'Débutant',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)
file = URI.open("https://cdn.aveine.paris/blog/wp-content/uploads/2021/06/09142442/Tour-de-France-regions-viticoles-Hospices-de-Beaune.jpg")
bourgogne.photo.attach(io: file, filename: "bourgogne.png", content_type: "image/png")
bourgogne.save

jura_savoie_bugey = Event.create!(
  name: 'dégustation des vins de nos montagnes',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: '10 septembre 2022',
  category: 'Loire',
  level: 'Débutant',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)
file = URI.open("https://img.lemde.fr/2022/04/20/0/0/5433/3578/664/0/75/0/19246b4_1650467126993-pns-900571516.jpg")
jura_savoie_bugey.photo.attach(io: file, filename: "jura_savoie_bugey.png", content_type: "image/png")
jura_savoie_bugey.save

beaujolais = Event.create!(
  name: 'soirée beaujolais pas nouveau',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: '10 septembre 2022',
  category: 'Loire',
  level: 'Débutant',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)
file = URI.open("https://www.lavoixdelain.fr/photos/moyen/39703.jpg")
beaujolais.photo.attach(io: file, filename: "beaujolais.png", content_type: "image/png")
beaujolais.save

vallee_du_rhone = Event.create!(
  name: 'vallée du rhône méridonale et charcuterie',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: '10 septembre 2022',
  category: 'Loire',
  level: 'Débutant',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)
file = URI.open("https://cdn.aveine.paris/blog/wp-content/uploads/2021/06/09142144/Tour-de-France-regions-viticoles-Palais-des-Papes.jpg")
vallee_du_rhone.photo.attach(io: file, filename: "valee_du_rhone.png", content_type: "image/png")
vallee_du_rhone.save

corse = Event.create!(
  name: 'vins corsés et fromages qui puent',
  description:  '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: '10 septembre 2022',
  category: 'Loire',
  level: 'Débutant',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)
file = URI.open("https://www.allibert-trekking.com/uploads/media/images/thumbnails/AMin3_2027-balisage-gr20.jpeg?v5")
corse.photo.attach(io: file, filename: "corse.png", content_type: "image/png")
corse.save

provence = Event.create!(
  name: 'pic-nique arrosé aux vins de provence',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: '10 septembre 2022',
  category: 'Loire',
  level: 'Débutant',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)
file = URI.open("https://media.istockphoto.com/photos/lavender-in-provence-at-sunrise-picture-id1133997327?k=20&m=1133997327&s=612x612&w=0&h=B5sIQ-f2gCvvZPpk1FW_uIwGnn_nF79bK9yIDl6M0aw=")
provence.photo.attach(io: file, filename: "provence.png", content_type: "image/png")
provence.save

languedoc_roussillon = Event.create!(
  name: 'dégustation de nos vins du Roussillon',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: '10 septembre 2022',
  category: 'Loire',
  level: 'Débutant',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)
file = URI.open("https://cdn.generationvoyage.fr/2020/11/couverture-pont-du-gard.jpg")
languedoc_roussillon.photo.attach(io: file, filename: "languedoc_roussillon.png", content_type: "image/png")
languedoc_roussillon.save

sud_ouest = Event.create!(
  name: 'garden party et vins de notre pays basque',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: '10 septembre 2022',
  category: 'Loire',
  level: 'Débutant',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)
file = URI.open("https://media.istockphoto.com/photos/red-espelette-peppers-drying-in-the-wall-of-basque-house-picture-id502807780?k=20&m=502807780&s=612x612&w=0&h=XJtkTZelu_9ntRznhitoupIJ61KaYCfj604wcKen8Sc=")
sud_ouest.photo.attach(io: file, filename: "sud_ouest.png", content_type: "image/png")
sud_ouest.save

bordeaux = Event.create!(
  name: "dégustation premium d'entre-deux-mers",
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: '10 septembre 2022',
  category: 'Loire',
  level: 'Confirmé',
  host_request: '',
  max_number_guest: '',
  min_price: 8,
  max_price: 12,
  host: user1
)
file = URI.open("https://static-otelico.com/cache/seekoo/0-La-Cite-du-Vin-reflets-1---Axelferis-7.jpg")
bordeaux.photo.attach(io: file, filename: "bordeaux.png", content_type: "image/png")
bordeaux.save

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
  event: loire
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
  event: loire
)

  booking_5 = Booking.create!(
  status: 'Upcoming',
  comment: '',
  guest: user2,
  event: loire
)

booking_6 = Booking.create!(
  status: 'Past',
  comment: '',
  guest: user2,
  event: loire
)

puts "Finished"
