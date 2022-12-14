# require "open-uri"

puts "Destroying existing seeds"

Message.destroy_all
Chatroom.destroy_all
Bottle.destroy_all
Booking.destroy_all
Event.destroy_all
Survey.destroy_all
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
file = URI.open("https://thumbs.dreamstime.com/b/portrait-d-homme-arabe-95179443.jpg")
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
  last_name: 'Barreix',
  email: 'jordan.barreix@gmail.com',
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
  level: 'Intermédiaire',
  postal_code: '44000',
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
  first_name: 'Oumou',
  last_name: 'Traore',
  email: 'oumou.traore@gmail.com',
  password: '123456',
  address: '20 avenue Alexandre Goupil',
  level: 'Intermédiaire',
  postal_code: '44700',
  city: 'Orvaul'

)
file = URI.open("https://image.freepik.com/photos-gratuite/gros-plan-jolie-femme-noire-plein-air_1262-6034.jpg")
user11.photo.attach(io: file, filename: "costume-1.jpg", content_type: "image/jpg")
user11.save


user12 = User.create!(
  first_name: 'Patrick',
  last_name: 'Gaussent',
  email: 'patrick.gaussent@gmail.com',
  password: '123456',
  address: "60 rue de la Pais",
  level: 'Expert',
  postal_code: '44340',
  city: 'Bouguenais'

)
file = URI.open("https://thumbs.dreamstime.com/b/homme-barbu-bel-buvant-du-vin-rouge-76045516.jpg")
user12.photo.attach(io: file, filename: "costume-1.jpg", content_type: "image/jpg")
user12.save


user13 = User.create!(
  first_name: 'Vinny',
  last_name: 'Algaron',
  email: 'vinny@gmail.com',
  password: '123456',
  address: "60 rue de la Pais",
  level: 'Novice',
  postal_code: '44340',
  city: 'Bouguenais'

)
file = URI.open("https://avatars.githubusercontent.com/u/108010616")
user13.photo.attach(io: file, filename: "costume-1.jpg", content_type: "image/jpg")
user13.save


user14 = User.create!(
  first_name: 'Jean',
  last_name: 'Avocat',
  email: 'jean@gmail.com',
  password: '123456',
  address: "60 rue de la Pais",
  level: 'Novice',
  postal_code: '44340',
  city: 'La Montagne'

)
file = URI.open("https://avatars.githubusercontent.com/u/86103386")
user14.photo.attach(io: file, filename: "costume-1.jpg", content_type: "image/jpg")
user14.save


user15 = User.create!(
  first_name: 'Marwan',
  last_name: 'Belhora',
  email: 'marwan@gmail.com',
  password: '123456',
  address: "60 rue de la Pais",
  level: 'Intermédiaire',
  postal_code: '44340',
  city: 'Nantes'

)
file = URI.open("https://avatars.githubusercontent.com/u/107486579")
user15.photo.attach(io: file, filename: "costume-1.jpg", content_type: "image/jpg")
user15.save


user16 = User.create!(
  first_name: 'Benoit',
  last_name: 'Brandt',
  email: 'benoit@gmail.com',
  password: '123456',
  address: "60 rue de la Pais",
  level: 'Novice',
  postal_code: '44340',
  city: 'Nantes'

)
file = URI.open("https://avatars.githubusercontent.com/u/104198121")
user16.photo.attach(io: file, filename: "costume-1.jpg", content_type: "image/jpg")
user16.save



user17 = User.create!(
  first_name: 'Melvin',
  last_name: 'Darvieux',
  email: 'melvin@gmail.com',
  password: '123456',
  address: "60 rue de la Pais",
  level: 'Novice',
  postal_code: '44340',
  city: 'Nantes'

)
file = URI.open("https://avatars.githubusercontent.com/u/105221230")
user17.photo.attach(io: file, filename: "costume-1.jpg", content_type: "image/jpg")
user17.save


user18 = User.create!(
  first_name: 'Alfred',
  last_name: 'Gaudin',
  email: 'alfred@gmail.com',
  password: '123456',
  address: "60 rue de la Pais",
  level: 'Intermédiaire',
  postal_code: '44340',
  city: 'Nantes'

)
file = URI.open("https://avatars.githubusercontent.com/u/107422134")
user18.photo.attach(io: file, filename: "costume-1.jpg", content_type: "image/jpg")
user18.save


user19 = User.create!(
  first_name: 'Raphaël',
  last_name: 'Hamou',
  email: 'raphaël@gmail.com',
  password: '123456',
  address: "60 rue de la Pais",
  level: 'Novice',
  postal_code: '44340',
  city: 'Nantes'

)
file = URI.open("https://avatars.githubusercontent.com/u/107106167")
user19.photo.attach(io: file, filename: "costume-1.jpg", content_type: "image/jpg")
user19.save

user20 = User.create!(
  first_name: 'Thomas',
  last_name: 'Perez',
  email: 'thomas@gmail.com',
  password: '123456',
  address: "60 rue de la Pais",
  level: 'Novice',
  postal_code: '44340',
  city: 'Nantes'

)
file = URI.open("https://avatars.githubusercontent.com/u/108613428")
user20.photo.attach(io: file, filename: "costume-1.jpg", content_type: "image/jpg")
user20.save


user21 = User.create!(
  first_name: 'Sylvain ',
  last_name: 'Vandermeersch',
  email: 'sylvain@gmail.com',
  password: '123456',
  address: "60 rue de la Pais",
  level: 'Intermédiaire',
  postal_code: '44340',
  city: 'Nantes'

)
file = URI.open("https://avatars.githubusercontent.com/u/106041442")
user21.photo.attach(io: file, filename: "costume-1.jpg", content_type: "image/jpg")
user21.save


user22 = User.create!(
  first_name: 'Marguerite',
  last_name: 'Choyer',
  email: 'marguerite@gmail.com',
  password: '123456',
  address: "60 rue de la Pais",
  level: 'Intermédiaire',
  postal_code: '44340',
  city: 'Nantes'

)
file = URI.open("https://avatars.githubusercontent.com/u/107570946")
user22.photo.attach(io: file, filename: "costume-1.jpg", content_type: "image/jpg")
user22.save


puts "Creating events..."

# A VENIR


bourgogne3 = Event.create!(
  name: 'Les Bourgognes du Sud : le Mâconnais',
  description: '',
  address: '6 passage de la Poule Noire',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('23rd Sep 2023'),
  time: Time.parse('17:30'),
  category: "Bourgogne",
  level: 'Novice',
  host_request: '',
  max_number_guest: 5,
  min_price: 12,
  max_price: 16,
  host: user2
)

bourgogne2 = Event.create!(
  name: 'Les hauts vins de Basse-Bourgogne',
  description: '',
  address: '6 passage de la Poule Noire',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('24th Sep 2023'),
  time: Time.parse('17:30'),
  category: "Bourgogne",
  level: 'Novice',
  host_request: '',
  max_number_guest: 5,
  min_price: 12,
  max_price: 16,
  host: user2
)

bourgogne1 = Event.create!(
  name: 'Côte de Beaunes contre Côte de nuits',
  description: '',
  address: '6 passage de la Poule Noire',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('30th Sep 2023'),
  time: Time.parse('17:30'),
  category: "Bourgogne",
  level: 'Novice',
  host_request: '',
  max_number_guest: 5,
  min_price: 12,
  max_price: 16,
  host: user2
)

bourgogne = Event.create!(
  name: 'Nuit blanche au Côte de nuits',
  description: '',
  address: '6 passage de la Poule Noire',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('16th Sep 2023'),
  time: Time.parse('17:30'),
  category: "Bourgogne",
  level: 'Novice',
  host_request: '',
  max_number_guest: 5,
  min_price: 12,
  max_price: 16,
  host: user2
)

provence5 = Event.create!(
  name: 'Les 3 couleurs de la Provence',
  description: '',
  address: '6 passage de la Poule Noire',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('10th Sep 2023'),
  time: Time.parse('12:00'),
  category: "Provence",
  level: 'Novice',
  host_request: '',
  max_number_guest: 5,
  min_price: 8,
  max_price: 12,
  host: user2
)

provence4 = Event.create!(
  name: 'La Provence pas rosée : les Rouges',
  description: '',
  address: '6 passage de la Poule Noire',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('16th Sep 2023'),
  time: Time.parse('12:00'),
  category: "Provence",
  level: 'Novice',
  host_request: '',
  max_number_guest: 5,
  min_price: 8,
  max_price: 12,
  host: user2
)

provence3 = Event.create!(
  name: 'Les massifs provençaux en pinards',
  description: '',
  address: '6 passage de la Poule Noire',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('24th Sep 2023'),
  time: Time.parse('12:00'),
  category: "Provence",
  level: 'Novice',
  host_request: '',
  max_number_guest: 5,
  min_price: 8,
  max_price: 12,
  host: user2
)

provence2 = Event.create!(
  name: 'Quel est le meilleur rosé de provence?',
  description: '',
  address: '6 passage de la Poule Noire',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('24th Sep 2023'),
  time: Time.parse('12:00'),
  category: "Provence",
  level: 'Novice',
  host_request: '',
  max_number_guest: 5,
  min_price: 8,
  max_price: 12,
  host: user2
)

provence1 = Event.create!(
  name: 'Pique-nique au rosé de provence',
  description: '',
  address: '6 passage de la Poule Noire',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('30th Sep 2023'),
  time: Time.parse('12:00'),
  category: "Provence",
  level: 'Novice',
  host_request: '',
  max_number_guest: 5,
  min_price: 8,
  max_price: 12,
  host: user2
)

provence = Event.create!(
  name: 'Pique-nique au rosé de provence',
  description: '',
  address: '6 passage de la Poule Noire',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('17th Sep 2023'),
  time: Time.parse('12:00'),
  category: "Provence",
  level: 'Novice',
  host_request: '',
  max_number_guest: 5,
  min_price: 8,
  max_price: 12,
  host: user2
)


beaujolais3 = Event.create!(
  name: 'Beaujolais ou Lyonnais ?',
  description: '',
  address: '6 passage de la Poule Noire',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('15th Sep 2023'),
  time: Time.parse('18:00'),
  category: "Beaujolais",
  level: 'Novice',
  host_request: '',
  max_number_guest: 6,
  min_price: 7,
  max_price: 12,
  host: user2
)

beaujolais2 = Event.create!(
  name: 'Les 2 visages du Beaujolais villages',
  description: '',
  address: '6 passage de la Poule Noire',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('23rd Sep 2023'),
  time: Time.parse('18:00'),
  category: "Beaujolais",
  level: 'Novice',
  host_request: '',
  max_number_guest: 6,
  min_price: 7,
  max_price: 12,
  host: user2
)

beaujolais1 = Event.create!(
  name: 'Les Crus du Beaujolais',
  description: '',
  address: '6 passage de la Poule Noire',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('30th Sep 2023'),
  time: Time.parse('18:00'),
  category: "Beaujolais",
  level: 'Novice',
  host_request: '',
  max_number_guest: 6,
  min_price: 7,
  max_price: 12,
  host: user2
)

beaujolais = Event.create!(
  name: 'Soirée Beaujolais pas nouveau',
  description: '',
  address: '6 passage de la Poule Noire',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('23rd Sep 2023'),
  time: Time.parse('18:00'),
  category: "Beaujolais",
  level: 'Novice',
  host_request: '',
  max_number_guest: 6,
  min_price: 7,
  max_price: 12,
  host: user2
)


alsace_lorraine3 = Event.create!(
  name: "Meuse et Maine : les oubliés de Lorraine",
  description: "Je vais faire la route des vins en Alsace le 17 septembre et serai ravi de vous faire un retour d'expérience à domicile le samedi suivant",
  address: '49 quai Émile Cormerais',
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('17th Sep 2023'),
  time: Time.parse('14:00'),
  category: "Alsace-Lorraine",
  level: 'Novice',
  host_request: '',
  max_number_guest: 6,
  min_price: 9,
  max_price: 13,
  host: user2
)

alsace_lorraine2 = Event.create!(
  name: "Rieslings & Gewurztraminer du Bas-Rhin",
  description: "Je vais faire la route des vins en Alsace le 17 septembre et serai ravi de vous faire un retour d'expérience à domicile le samedi suivant",
  address: '49 quai Émile Cormerais',
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('23rd Sep 2023'),
  time: Time.parse('14:00'),
  category: "Alsace-Lorraine",
  level: 'Novice',
  host_request: '',
  max_number_guest: 6,
  min_price: 9,
  max_price: 13,
  host: user2
)

alsace_lorraine1 = Event.create!(
  name: "Les Grand-Crus alsaciens",
  description: "Je vais faire la route des vins en Alsace le 17 septembre et serai ravi de vous faire un retour d'expérience à domicile le samedi suivant",
  address: '49 quai Émile Cormerais',
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('30th Sep 2023'),
  time: Time.parse('14:00'),
  category: "Alsace-Lorraine",
  level: 'Novice',
  host_request: '',
  max_number_guest: 6,
  min_price: 9,
  max_price: 13,
  host: user2
)

alsace_lorraine = Event.create!(
  name: "Retour de route des vins alsaciens",
  description: "Je vais faire la route des vins en Alsace le 17 septembre et serai ravi de vous faire un retour d'expérience à domicile le samedi suivant",
  address: '49 quai Émile Cormerais',
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('24th Sep 2023'),
  time: Time.parse('14:00'),
  category: "Alsace-Lorraine",
  level: 'Novice',
  host_request: '',
  max_number_guest: 6,
  min_price: 9,
  max_price: 13,
  host: user2
)


champagne3 = Event.create!(
  name: "La Montagne de Reims",
  description:'Et si on essayait ensemble 8 champagnes le 30 septembre? Une sorte de warming-up 3 mois avant le réveillon et le meilleur moyen de bien choisir sa bouteille pour le jour J ',
  address:'33 rue Saint-Léonard',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('17th Sep 2023'),
  time: Time.parse('21:00'),
  category: "Champagne",
  level: 'Novice',
  host_request: '',
  max_number_guest: 7,
  min_price: 16,
  max_price: 20,
  host: user4
)

champagne2 = Event.create!(
  name: "Les 3 côtes de Champagne",
  description:'Et si on essayait ensemble 8 champagnes le 30 septembre? Une sorte de warming-up 3 mois avant le réveillon et le meilleur moyen de bien choisir sa bouteille pour le jour J ',
  address:'33 rue Saint-Léonard',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('23rd Sep 2023'),
  time: Time.parse('21:00'),
  category: "Champagne",
  level: 'Novice',
  host_request: '',
  max_number_guest: 7,
  min_price: 16,
  max_price: 20,
  host: user4
)

champagne1 = Event.create!(
  name: "Les pinards sans bulle de Champagne",
  description:'Et si on essayait ensemble 8 champagnes le 30 septembre? Une sorte de warming-up 3 mois avant le réveillon et le meilleur moyen de bien choisir sa bouteille pour le jour J ',
  address:'33 rue Saint-Léonard',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('24th Sep 2023'),
  time: Time.parse('21:00'),
  category: "Champagne",
  level: 'Novice',
  host_request: '',
  max_number_guest: 7,
  min_price: 16,
  max_price: 20,
  host: user4
)

champagne = Event.create!(
  name: "8 champagnes avant les fêtes",
  description:'Et si on essayait ensemble 8 champagnes le 30 septembre? Une sorte de warming-up 3 mois avant le réveillon et le meilleur moyen de bien choisir sa bouteille pour le jour J ',
  address:'33 rue Saint-Léonard',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('15th Sep 2023'),
  time: Time.parse('21:00'),
  category: "Champagne",
  level: 'Novice',
  host_request: '',
  max_number_guest: 7,
  min_price: 16,
  max_price: 20,
  host: user4
)


loire2 = Event.create!(

  name: "Les Vins de rois du Saumurois",
  description: "Soyez les bienvenus dans mon jardin, sous le pont de cheviré pour une descente de la loire par ses pinards : du Côte Roannaise en Auvergne jusqu'à notre Muscadet local",
  address: "49 quai Émile Cormerais",
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('16th Sep 2023'),
  time: Time.parse('14:30'),
  category: "Loire",
  level: 'Novice',
  host_request: '1 côte-roannaise et 1 muscadet-sèvre-et-maine',
  max_number_guest: 7,
  min_price: 8,
  max_price: 12,
  host: user2
)

loire3 = Event.create!(

  name: "Autour de Tours",
  description: "Soyez les bienvenus dans mon jardin, sous le pont de cheviré pour une descente de la loire par ses pinards : du Côte Roannaise en Auvergne jusqu'à notre Muscadet local",
  address: "49 quai Émile Cormerais",
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('17 Sep 2023'),
  time: Time.parse('14:30'),
  category: "Loire",
  level: 'Novice',
  host_request: '1 côte-roannaise et 1 muscadet-sèvre-et-maine',
  max_number_guest: 7,
  min_price: 8,
  max_price: 12,
  host: user3
)

loire4 = Event.create!(

  name: "Orléans, pas capitale que du vinaigre!",
  description: "Soyez les bienvenus dans mon jardin, sous le pont de Cheviré pour une descente de la loire par ses pinards : du Saint-Pourçain d'Auvergne jusqu'à notre Muscadet local",
  address: "49 quai Émile Cormerais",
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('23rd Sep 2023'),
  time: Time.parse('14:30'),
  category: "Loire",
  level: 'Novice',
  host_request: '1 côte-roannaise et 1 muscadet-sèvre-et-maine',
  max_number_guest: 7,
  min_price: 8,
  max_price: 12,
  host: user3
)

loire5 = Event.create!(

  name: "la loire commence en Auvergne",
  description: "Soyez les bienvenus dans mon jardin, sous le pont de cheviré pour une descente de la loire par ses pinards : du Côte Roannaise en Auvergne jusqu'à notre Muscadet local",
  address: "49 quai Émile Cormerais",
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('24th Sep 2023'),
  time: Time.parse('14:30'),
  category: "Loire",
  level: 'Novice',
  host_request: '1 côte-roannaise et 1 muscadet-sèvre-et-maine',
  max_number_guest: 7,
  min_price: 8,
  max_price: 12,
  host: user3
)

loire = Event.create!(
  name: 'Toute la loire en pinards',
  description: "Soyez les bienvenus dans mon jardin, sous le pont de Cheviré pour une descente de la Loire par ses pinards : du Saint-Pourçain d'Auvergne (dont je me charge) jusqu'à notre Muscadet local, en passant par ceux que vous apporterez...",
  address: "49 quai Émile Cormerais",
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('1st Oct 2023'),
  time: Time.parse('14:30'),
  category: "Loire",
  level: 'Novice',
  host_request: '1 côte-roannaise et 1 muscadet-sèvre-et-maine',
  max_number_guest: 7,
  min_price: 8,
  max_price: 12,
  host: user1
)

sud_ouest5 = Event.create!(
  name: "Wine-Up de rentrée",
  description: "Déjà une semaine qu'on est rentrés! Et si on ressortait notre vin préféré de cet été! Pour moi c'était l'Irouléguy du pays basque. Et vous ?",
  address: 'Passage de la Poule Noire',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('9th Sep 2023'),
  time: Time.parse('19:30'),
  category: "Sud-Ouest",
  level: 'Novice',
  host_request: 'Le vin de ton été !',
  max_number_guest: 14,
  min_price: 5,
  max_price: 10,
  host: user1
)

vallee_du_rhone1 = Event.create!(
  name: 'Les Rouges du Rhône septentrional',
  description: '',
  address: '21 rue de Cahors',
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('15th Sep 2023'),
  time: Time.parse('17:30'),
  category: "Rhône",
  level: 'Novice',
  host_request: '',
  max_number_guest: 6,
  min_price: 9,
  max_price: 15,
  host: user3
)

vallee_du_rhone2 = Event.create!(
  name: 'Rhône méridonal et charcuterie',
  description: 'Rouges et blancs de la vallée du Rhône méridionale',
  address: '21 rue de Cahors',
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('27th Sep 2023'),
  time: Time.parse('18:30'),
  category: "Rhône",
  level: 'Novice',
  host_request: '',
  max_number_guest: 6,
  min_price: 9,
  max_price: 15,
  host: user3
)


corse1 = Event.create!(
  name: 'Le GR vins',
  description:  '',
  address: '21 rue de Cahors',
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('14th Sep 2023'),
  time: Time.parse('18:30'),
  category: "Corse",
  level: 'Novice',
  host_request: '',
  max_number_guest: 6,
  min_price: 10,
  max_price: 14,
  host: user3
)

corse2 = Event.create!(
  name: 'La Corse par le Sud',
  description:  '',
  address: '21 rue de Cahors',
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('26th Sep 2023'),
  time: Time.parse('18:30'),
  category: "Corse",
  level: 'Novice',
  host_request: '',
  max_number_guest: 6,
  min_price: 10,
  max_price: 14,
  host: user3
)

jura_savoie_bugey1 = Event.create!(
  name: 'Dégustation des vins de nos montagnes',
  description: '',
  address: '21 rue de Cahors',
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('15th Sep 2023'),
  time: Time.parse('12:00'),
  category: "Jura-Bugey-Savoie",
  level: 'Novice',
  host_request: '',
  max_number_guest: 9,
  min_price: 10,
  max_price: 15,
  host: user3
)


languedoc_roussillon1 = Event.create!(
  name: 'Dégustation de nos vins du Roussillon',
  description: 'Decouverte des vins de pays du Roussilon?',
  address: '33 rue Saint-Léonard',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('13th Sep 2023'),
  time: Time.parse('18:30'),
  category: "Languedoc-Roussillon",
  level: 'Novice',
  host_request: '',
  max_number_guest: 7,
  min_price: 5,
  max_price: 10,
  host: user4
)

sud_ouest1 = Event.create!(
  name: 'Petits vins Pyrénéens',
  description: '',
  address: '49 quai Émile Cormerais',
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('12th Sep 2023'),
  time: Time.parse('17:00'),
  category: "Sud-Ouest",
  level: 'Intermédiaire',
  host_request: '',
  max_number_guest: 11,
  min_price: 9,
  max_price: 13,
  host: user3
)

sud_ouest2 = Event.create!(
  name: 'Retour de route des vins du Bergeracois',
  description: '',
  address: '49 quai Émile Cormerais',
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('18th Sep 2023'),
  time: Time.parse('17:00'),
  category: "Sud-Ouest",
  level: 'Intermédiaire',
  host_request: '',
  max_number_guest: 11,
  min_price: 9,
  max_price: 13,
  host: user3
)


bordeaux1 = Event.create!(
  name: "Bordeaux rive-gauche : les Graves",
  description: '',
  address: '33 rue Saint-Léonard',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('10th Sep 2023'),
  time: Time.parse('15:00'),
  category: "Bordeaux",
  level: 'Expert',
  host_request: '',
  max_number_guest: 4,
  min_price: 20,
  max_price: 30,
  host: user4
)


bordeaux2 = Event.create!(
  name: "Bordeaux rive-droite : le Libournais",
  description: '',
  address: '33 rue Saint-Léonard',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('29th September 2023'),
  time: Time.parse('15:00'),
  category: "Bordeaux",
  level: 'Expert',
  host_request: '',
  max_number_guest: 4,
  min_price: 20,
  max_price: 30,
  host: user4
)


# PASSES

vallee_du_rhone = Event.create!(
  name: 'Vallée du rhône méridonal ',
  description: '',
  address: '49 quai Émile Cormerais',
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('1st Sep 2023'),
  time: Time.parse('17:30'),
  category: "Rhône",
  level: 'Novice',
  host_request: '',
  max_number_guest: 6,
  min_price: 9,
  max_price: 15,
  host: user1
)

corse = Event.create!(
  name: 'Vins corsés et fromages forts',
  description:  '',
  address: '49 quai Émile Cormerais',
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('4th May 2023'),
  time: Time.parse('18:30'),
  category: "Corse",
  level: 'Novice',
  host_request: '',
  max_number_guest: 6,
  min_price: 10,
  max_price: 14,
  host: user1
)

jura_savoie_bugey = Event.create!(
  name: 'Dégustation des vins de nos montagnes',
  description: '',
  address: '21 rue de Cahors',
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('5th Sep 2023'),
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
  name: 'Dégustation de nos vins du Roussillon',
  description: '',
  address: '49 quai Émile Cormerais',
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('4th Sep 2023'),
  time: Time.parse('18:30'),
  category: "Languedoc-Roussillon",
  level: 'Novice',
  host_request: '',
  max_number_guest: 7,
  min_price: 5,
  max_price: 10,
  host: user1
)

jura_savoie_bugey = Event.create!(
  name: 'Dégustation des vins de nos montagnes',
  description: '',
  address: '21 rue de Cahors',
  postal_code: '44800',
  city: 'Saint-Herblain',
  date: Date.parse('3rd sep 2023'),
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
  name: 'Dégustation de nos vins du Roussillon',
  description: '',
  address: '33 rue Saint-Léonard',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('24th Aug 2023'),
  time: Time.parse('18:30'),
  category: "Languedoc-Roussillon",
  level: 'Novice',
  host_request: '',
  max_number_guest: 7,
  min_price: 5,
  max_price: 10,
  host: user4
)


bordeaux = Event.create!(
  name: "Dégustation premium d'Entre-deux-mers",
  description: "Avant d'orpailler les rives gauche puis droite de la Garonne, nous commençons notre exploration du vignoble bordelais par le milieu avec l'Entre-deux-mers.",
  address: '33 rue Saint-Léonard',
  postal_code: '44000',
  city: 'Nantes',
  date: Date.parse('18 Aug 2023'),
  time: Time.parse('15:00'),
  category: "Bordeaux",
  level: 'Expert',
  host_request: '',
  max_number_guest: 4,
  min_price: 20,
  max_price: 30,
  host: user4
)


champagne3 = Event.create!(
  name: "Vallée de la Marne & Montagne de Reims",
  description:'Et si on essayait ensemble 8 champagnes? Une sorte de warming-up 3 mois avant le réveillon et le meilleur moyen de bien choisir sa bouteille pour le jour J ',
  address: '49 quai Émile Cormerais',
  postal_code: '44800',
  city: 'Nantes',
  date: Date.parse('17th Jul 2023'),
  time: Time.parse('21:00'),
  category: "Champagne",
  level: 'Novice',
  host_request: '',
  max_number_guest: 7,
  min_price: 16,
  max_price: 20,
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

booking_14 = Booking.create!(
  status: 'Upcoming',
  comment: '',
  guest: user11,
  event: provence
)

booking_15 = Booking.create!(
  status: 'Upcoming',
  comment: '',
  guest: user12,
  event: provence
)

booking_16 = Booking.create!(
  status: 'Upcoming',
  comment: '',
  guest: user7,
  event: beaujolais
)

booking_17 = Booking.create!(
  status: 'Upcoming',
  comment: '',
  guest: user8,
  event: beaujolais
)

booking_18 = Booking.create!(
  status: 'Upcoming',
  comment: '',
  guest: user9,
  event: beaujolais
)

booking_19 = Booking.create!(
  status: 'Past',
  comment: '',
  guest: user7,
  event: bordeaux
)

booking_19 = Booking.create!(
  status: 'Past',
  comment: '',
  guest: user6,
  event: bordeaux
)


booking_19 = Booking.create!(
  status: 'Upcoming',
  comment: 'Gaillac 2019',
  guest: user6,
  event: sud_ouest5
)

booking_19 = Booking.create!(
  status: 'Upcoming',
  comment: '1 Jurançon 2021',
  guest: user7,
  event: sud_ouest5
)

booking_20 = Booking.create!(
  status: 'Upcoming',
  comment: '1 madiran',
  guest: user13,
  event: sud_ouest5
)

booking_21 = Booking.create!(
  status: 'Upcoming',
  comment: '1 Irouléguy',
  guest: user14,
  event: sud_ouest5
)

booking_22 = Booking.create!(
  status: 'Upcoming',
  comment: '1 bergerac 2018',
  guest: user15,
  event: sud_ouest5
)

booking_23 = Booking.create!(
  status: 'Upcoming',
  comment: '1 Marcillac',
  guest: user16,
  event: sud_ouest5
)

booking_24 = Booking.create!(
  status: 'Upcoming',
  comment: 'Cahors 2020',
  guest: user17,
  event: sud_ouest5
)

booking_25 = Booking.create!(
  status: 'Upcoming',
  comment: 'un Fronton',
  guest: user18,
  event: sud_ouest5
)


booking_26 = Booking.create!(
    status: 'Upcoming',
    comment: '1 pécharmant, pour le nom',
    guest: user19,
    event: sud_ouest5
)

booking_27 = Booking.create!(
  status: 'Upcoming',
  comment: '1 buzet 2020',
  guest: user20,
  event: sud_ouest5
)

booking_28 = Booking.create!(
  status: 'Upcoming',
  comment: '1 Haut-Montravel 2021',
  guest: user21,
  event: sud_ouest5,
)

booking_29 = Booking.create!(
  status: 'Upcoming',
  comment: '1 Tursan 2017',
  guest: user22,
  event: sud_ouest5,
)

booking_30 = Booking.create!(
  status: 'Upcoming',
  comment: 'Saussignac 2018',
  guest: user5,
  event: sud_ouest5,
)


puts "Finished"
