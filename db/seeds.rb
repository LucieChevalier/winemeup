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
  address: '12 rue Paul Bellamy, Nantes 44000'
)

user2 = User.create!(
  first_name: 'Maria',
  last_name: 'Cabrero',
  email: 'maria.cabrero@gmail.com',
  password: 'MariaC',
  address: '8 passage de la Poule Noire, Nantes 44000'
)

user3 = User.create!(
  first_name: 'Jean',
  last_name: 'Dupont',
  email: 'jean.dupont@gmail.com',
  password: 'JeanDu',
  address: '9 avenue d’Italie, Paris 75013'
)


puts "Creating bottles..."

champagne = Bottle.create!(

  name:
  country: 'France'
  region: 'Beaujolais'
  appelation: 'Saint-Amour'
  domaine_name: 'Domaine à la folie'
  producer: 'Olivier Terrier'
  color: 'Rouge'
  comment:
  vintage: '2021'
  price: '6,79'
  pic_url:
)


alsace = Bottle.create!(

  name:
  country: 'France'
  region: 'Beaujolais'
  appelation: 'Saint-Amour'
  domaine_name: 'Domaine à la folie'
  producer: 'Olivier Terrier'
  color: 'Rouge'
  comment:
  vintage: '2021'
  price: '6,79'
  pic_url:
)

bourgogne = Bottle.create!(

  name:
  country: 'France'
  region: 'Beaujolais'
  appelation: 'Saint-Amour'
  domaine_name: 'Domaine à la folie'
  producer: 'Olivier Terrier'
  color: 'Rouge'
  comment:
  vintage: '2021'
  price: '6,79'
  pic_url:
)

jura = Bottle.create!(

  name:
  country: 'France'
  region: 'Beaujolais'
  appelation: 'Saint-Amour'
  domaine_name: 'Domaine à la folie'
  producer: 'Olivier Terrier'
  color: 'Rouge'
  comment:
  vintage: '2021'
  price: '6,79'
  pic_url:
)

beaujolais = Bottle.create!(

  name:
  country: 'France'
  region: 'Beaujolais'
  appelation: 'Saint-Amour'
  domaine_name: 'Domaine à la folie'
  producer: 'Olivier Terrier'
  color: 'Rouge'
  comment:
  vintage: '2021'
  price: '6,79'
  pic_url:
)

rhône = Bottle.create!(

  name:
  country: 'France'
  region: 'Beaujolais'
  appelation: 'Saint-Amour'
  domaine_name: 'Domaine à la folie'
  producer: 'Olivier Terrier'
  color: 'Rouge'
  comment:
  vintage: '2021'
  price: '6,79'
  pic_url:
)

corse = Bottle.create!(

  name:
  country: 'France'
  region: 'Beaujolais'
  appelation: 'Saint-Amour'
  domaine_name: 'Domaine à la folie'
  producer: 'Olivier Terrier'
  color: 'Rouge'
  comment:
  vintage: '2021'
  price: '6,79'
  pic_url:
)

provence = Bottle.create!(

  name:
  country: 'France'
  region: 'Beaujolais'
  appelation: 'Saint-Amour'
  domaine_name: 'Domaine à la folie'
  producer: 'Olivier Terrier'
  color: 'Rouge'
  comment:
  vintage: '2021'
  price: '6,79'
  pic_url:
)

languedoc = Bottle.create!(

  name:
  country: 'France'
  region: 'Beaujolais'
  appelation: 'Saint-Amour'
  domaine_name: 'Domaine à la folie'
  producer: 'Olivier Terrier'
  color: 'Rouge'
  comment:
  vintage: '2021'
  price: '6,79'
  pic_url:
)

sudouest = Bottle.create!(

  name:
  country: 'France'
  region: 'Beaujolais'
  appelation: 'Saint-Amour'
  domaine_name: 'Domaine à la folie'
  producer: 'Olivier Terrier'
  color: 'Rouge'
  comment:
  vintage: '2021'
  price: '6,79'
  pic_url:
)

bordeaux = Bottle.create!(

  name:
  country: 'France'
  region: 'Beaujolais'
  appelation: 'Saint-Amour'
  domaine_name: 'Domaine à la folie'
  producer: 'Olivier Terrier'
  color: 'Rouge'
  comment:
  vintage: '2021'
  price: '6,79'
  pic_url:
)

loire = Bottle.create!(

  name:
  country: 'France'
  region: 'Beaujolais'
  appelation: 'Saint-Amour'
  domaine_name: 'Domaine à la folie'
  producer: 'Olivier Terrier'
  color: 'Rouge'
  comment:
  vintage: '2021'
  price: '6,79'
  pic_url:
)


puts "Creating events..."



event 1 = Event.create!(

  name:
  description:
  address:
  date:
  category:
  level:
  host_request:
  max_number_gues:
  price_range:
  pic_url:
)

puts "Creating bookings..."

event 1 = Booking.create!(

  comment:
  status:
)





create_table "bookings", force: :cascade do |t|
  t.string "comment"
  t.string "status"
  t.bigint "event_id"
  t.bigint "guest_id"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
  t.index ["event_id"], name: "index_bookings_on_event_id"
  t.index ["guest_id"], name: "index_bookings_on_guest_id"
end
