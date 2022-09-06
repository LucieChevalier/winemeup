# require "open-uri"

puts "Destroying existing seeds"

Message.destroy_all
Chatroom.destroy_all
Bottle.destroy_all
Booking.destroy_all
Event.destroy_all
User.destroy_all

puts "Creating users..."

user1 = User.create!(
  first_name: 'Maxime',
  last_name: 'Gueye',
  email: 'maxime.gueye@free.fr',
  password: '123456',
  address: '49 quai Émile Cormerais',
  level: 'Expert',
  postal_code: '44800',
  city: 'Saint-Herblain'
)

file = URI.open("https://avatars.githubusercontent.com/u/106144925")
user1.photo.attach(io: file, filename: "costume-1.jpeg", content_type: "image/jpeg")
user1.save

user2 = User.create!(
  first_name: 'Maria',
  last_name: 'Cabrero',
  email: 'maria.cabrero@gmail.com',
  password: '123456',
  address: '6 passage de la Poule Noire',
  level: 'Intermédiaire',
  postal_code: '44000',
  city: 'Nantes'

)
file = URI.open("https://us.123rf.com/450wm/goodluz/goodluz1406/goodluz140600356/28837803-femme-d%C3%A9gustation-de-vin-rouge-dans-la-cave.jpg")
user2.photo.attach(io: file, filename: "costume-1.jpg", content_type: "image/jpg")
user2.save

user3 = User.create!(
  first_name: 'Sélim',
  last_name: 'Menouer',
  email: 'sélim.menouer@gmail.com',
  password: '123456',
  address: '21 rue de Cahors',
  level: 'Intermédiaire',
  postal_code: '44100',
  city: 'Saint-Herblain'

)
file = URI.open("https://st.depositphotos.com/2590737/2940/i/950/depositphotos_29407191-stock-photo-successful-elegant-smiling-mature-casual.jpg")
user3.photo.attach(io: file, filename: "costume-1.jpg", content_type: "image/jpg")
user3.save

user4 = User.create!(
  first_name: 'Alex',
  last_name: 'Hay',
  email: 'alice.hay@gmail.com',
  password: '123456',
  address: '33 rue Saint-Léonard',
  level: 'Novice',
  postal_code: '44000',
  city: 'Nantes'

)
file = URI.open("https://st.depositphotos.com/1008939/1880/i/950/depositphotos_18807295-stock-photo-portrait-of-handsome-man.jpg")
user4.photo.attach(io: file, filename: "costume-1.jpg", content_type: "image/jpg")
user4.save

user5 = User.create!(
  first_name: 'Jordan',
  last_name: 'Bareix',
  email: 'jordan.bareix@free.fr',
  password: '123456',
  address: '2 place Aristide Briand',
  level: 'Intermédiaire',
  postal_code: '44000',
  city: 'Nantes'

)
file = URI.open("https://avatars.githubusercontent.com/u/108475328")
user5.photo.attach(io: file, filename: "costume-1.jpeg", content_type: "image/jpeg")
user5.save

user6 = User.create!(
  first_name: 'Lucie',
  last_name: 'Chevalier',
  email: 'lucie.chevalier@free.fr',
  password: '123456',
  address: '11 avenue de Normandie',
  level: 'Novice',
  postal_code: '44300',
  city: 'Nantes'

)
file = URI.open("https://avatars.githubusercontent.com/u/107299884")
user6.photo.attach(io: file, filename: "costume-1.jpeg", content_type: "image/jpeg")
user6.save

user7 = User.create!(
  first_name: 'Julien',
  last_name: 'Lamy',
  email: 'julien.lamy@free.fr',
  password: '123456',
  address: '12 rue Paul Bellamy',
  level: 'Novice',
  postal_code: '44200',
  city: 'Nantes'

)
file = URI.open("https://avatars.githubusercontent.com/u/106027481")
user7.photo.attach(io: file, filename: "costume-1.jpeg", content_type: "image/jpeg")
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
file = URI.open("https://previews.123rf.com/images/vgstudio/vgstudio1406/vgstudio140600096/28827646-jeune-homme-avec-un-verre-de-vin-rouge-%C3%A0-l-ext%C3%A9rieur.jpg")
user8.photo.attach(io: file, filename: "costume-1.jpg", content_type: "image/jpg")
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
file = URI.open("https://thumbs.dreamstime.com/b/l-homme-chauve-dans-un-proc%C3%A8s-go%C3%BBte-le-vin-20453171.jpg")
user9.photo.attach(io: file, filename: "costume-1.jpg", content_type: "image/jpg")
user9.save

user10 = User.create!(
  first_name: 'Laure',
  last_name: 'Carette',
  email: 'laure.carette@gmail.com',
  password: '123456',
  address: '21 allée des Tanneurs',
  level: 'Novice',
  postal_code: '44000',
  city: 'Nantes'

)
file = URI.open("https://fotomelia.com/wp-content/uploads/edd/2015/12/banque-d-images-gratuites-libres-de-droits438-1560x1286.jpg")
user10.photo.attach(io: file, filename: "costume-1.jpg", content_type: "image/jpg")
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
file = URI.open("https://thumbs.dreamstime.com/b/b%C3%A4rtiger-mann-mit-wein-80753619.jpg")
user11.photo.attach(io: file, filename: "costume-1.jpg", content_type: "image/jpg")
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
file = URI.open("https://www.vets4pets.com/siteassets/species/cat/kitten/tiny-kitten-in-sunlight.jpg")
user12.photo.attach(io: file, filename: "costume-1.jpg", content_type: "image/jpg")
user12.save

puts "Creating events..."

# A VENIR

loire = Event.create!(

  name: 'descente de la loire en pinard',
  description: "Soyez les bienvenus dans mon jardin, sous le pont de cheviré pour une descente de la loire par ses pinards : du Côte Roannaise en Auvergne jusqu'à notre Muscadet local",
  address: "49 quai Émile Cormerais, 44800 Saint-Herblain",
  date: Date.parse('10th Sep 2022'),
  time: Time.parse('14:30'),
  category: "Loire",
  level: 'Novice',
  host_request: '1 côte-roannaise et 1 muscadet-sèvre-et-maine',
  max_number_guest: 7,
  min_price: 8,
  max_price: 12,
  host: user1
)

champagne = Event.create!(
  name: "Saint-Sylvestre aux 8 champagnes",
  description:'Et si on essayait ensemble 8 champagnes le 3 déembre? Une sorte de warming-up 1 mois avant le réveillon et le meilleur moyen de bien choisir son champagne pour le jour J ',
  address:'33 rue Saint-Léonard, 44000 Nantes',
  date: Date.parse('3rd Dec 2022'),
  time: Time.parse('21:00'),
  category: "Champagne",
  level: 'Novice',
  host_request: '',
  max_number_guest: 7,
  min_price: 16,
  max_price: 20,
  host: user4
)

alsace_lorraine = Event.create!(
  name: "retour de route des vins alsaciens",
  description: "Je vais faire la route des vins en Alsace le 17 septembre et serai ravi de vous faire un retour d'expérience à domicile le samedi suivant",
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('24th Sep 2022'),
  time: Time.parse('14:00'),
  category: "Alsace-Lorraine",
  level: 'Novice',
  host_request: '',
  max_number_guest: 6,
  min_price: 9,
  max_price: 13,
  host: user1
)

bourgogne = Event.create!(
  name: 'nuit blanche au côte de nuits',
  description: '',
  address: '6 passage de la Poule Noire, 44000 Nantes',
  date: Date.parse('16th Sep 2022'),
  time: Time.parse('17:30'),
  category: "Bourgogne",
  level: 'Novice',
  host_request: '',
  max_number_guest: 5,
  min_price: 12,
  max_price: 16,
  host: user2
)

provence = Event.create!(
  name: 'pique-nique arrosé aux vins de provence',
  description: '',
  address: '6 passage de la Poule Noire, 44000 Nantes',
  date: Date.parse('17th Sep 2022'),
  time: Time.parse('12:00'),
  category: "Provence",
  level: 'Novice',
  host_request: '',
  max_number_guest: 5,
  min_price: 8,
  max_price: 12,
  host: user2
)

beaujolais = Event.create!(
  name: 'soirée beaujolais pas nouveau',
  description: '',
  address: '6 passage de la Poule Noire, 44000 Nantes',
  date: Date.parse('23rd Sep 2022'),
  time: Time.parse('18:00'),
  category: "Beaujolais",
  level: 'Novice',
  host_request: '',
  max_number_guest: 6,
  min_price: 7,
  max_price: 12,
  host: user2
)

# PASSES

vallee_du_rhone = Event.create!(
  name: 'vallée du rhône méridonale et charcuterie',
  description: '',
  address: '21 rue de Cahors, 44100 Saint-Herblain',
  date: Date.parse('1st Sep 2022'),
  time: Time.parse('17:30'),
  category: "Rhône",
  level: 'Novice',
  host_request: '',
  max_number_guest: 6,
  min_price: 9,
  max_price: 15,
  host: user3
)

corse = Event.create!(
  name: 'vins corsés et fromages qui puent',
  description:  '',
  address: '21 rue de Cahors, 44100 Saint-Herblain',
  date: Date.parse('4th Sep 2022'),
  time: Time.parse('18:30'),
  category: "Corse",
  level: 'Novice',
  host_request: '',
  max_number_guest: 6,
  min_price: 10,
  max_price: 14,
  host: user3
)

jura_savoie_bugey = Event.create!(
  name: 'dégustation des vins de nos montagnes',
  description: '',
  address: '21 rue de Cahors, 44100 Saint-Herblain',
  date: Date.parse('3rd Sep 2022'),
  time: Time.parse('12:00'),
  category: "Jura-Bugey-Savoie",
  level: 'Novice',
  host_request: '',
  max_number_guest: 9,
  min_price: 10,
  max_price: 15,
  host: user3
)

languedoc_roussillon = Event.create!(
  name: 'dégustation de nos vins du Roussillon',
  description: '',
  address: '33 rue Saint-Léonard, 44000 Nantes',
  date: Date.parse('24th Aug 2022'),
  time: Time.parse('18:30'),
  category: "Languedoc-Roussillon",
  level: 'Novice',
  host_request: '',
  max_number_guest: 7,
  min_price: 5,
  max_price: 10,
  host: user4
)

sud_ouest = Event.create!(
  name: 'garden party et vins de notre pays basque',
  description: '',
  address: '49 quai Émile Cormerais, 44800 Saint-Herblain',
  date: Date.parse('25th Aug 2022'),
  time: Time.parse('17:00'),
  category: "Sud-Ouest",
  level: 'Intermédiaire',
  host_request: '',
  max_number_guest: 11,
  min_price: 9,
  max_price: 13,
  host: user1
)

bordeaux = Event.create!(
  name: "dégustation premium d'entre-deux-mers",
  description: '',
  address: '33 rue Saint-Léonard, 44000 Nantes',
  date: Date.parse('18 Aug 2022'),
  time: Time.parse('15:00'),
  category: "Bordeaux",
  level: 'Expert',
  host_request: '',
  max_number_guest: 4,
  min_price: 20,
  max_price: 30,
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
  comment: '1 Sancerre',
  guest: user10,
  event: loire
)

booking_2 = Booking.create!(
  status: 'Upcoming',
  comment: '1 Menetou-Salon',
  guest: user6,
  event: loire
)

booking_3 = Booking.create!(
  status: 'Upcoming',
  comment: '1 Coteaux-du-layon grand cru Quarts de Chaume',
  guest: user7,
  event: loire
)

booking_4 = Booking.create!(
  status: 'Upcoming',
  comment: '1 Saumur-Champigny',
  guest: user3,
  event: loire
)

booking_5 = Booking.create!(
  status: 'Upcoming',
  comment: '1 Bourgueil',
  guest: user9,
  event: loire
)

booking_6 = Booking.create!(
  status: 'Upcoming',
  comment: '1 Pouilly-Fumé',
  guest: user8,
  event: loire
)

booking_7 = Booking.create!(
  status: 'Upcoming',
  comment: '',
  guest: user6,
  event: bourgogne
)

booking_8 = Booking.create!(
  status: 'Upcoming',
  comment: '',
  guest: user8,
  event: champagne
)

booking_9 = Booking.create!(
  status: 'Upcoming',
  comment: '',
  guest: user9,
  event: champagne
)

booking_10 = Booking.create!(
  status: 'Upcoming',
  comment: '',
  guest: user10,
  event: bourgogne
)


booking_10 = Booking.create!(
  status: 'Past',
  comment: '',
  guest: user5,
  event: corse
)

booking_11 = Booking.create!(
  status: 'Past',
  comment: '',
  guest: user1,
  event: bordeaux
)

booking_12 = Booking.create!(
  status: 'Past',
  comment: '',
  guest: user5,
  event: bordeaux
)

booking_13 = Booking.create!(
  status: 'Upcoming',
  comment: '',
  guest: user1,
  event: champagne
)

puts "Finished"
