

# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Movie.destroy_all
Actor.destroy_all


# # loop ten times
# 10.times do
#     puts "Creating movies..."
#     movie = Movie.create(
#         title:Faker::Movie.title,
#         box_office_earnings: rand(100000..10000000)
        
#     )
#     puts "Creating actors..."
#     # create a game with random data
#     actor = Actor.create(
#       name: Faker::Name.name,
#     )

#     puts "Creating roles..."
#     rand(1..10).times do
   
#         # create a game with random data
#         role = Role.create(
#             salary: rand(10000..1000000),
#             character_name: Faker::Movies::Lebowski.character,
#             actor_id: actor.id,
#             movie_id: movie.id
#         )
#     end
puts "Creating movies..."
mean_girls = Movie.create(title: "Mean Girls", box_office_earnings: 129_000_000)
spice_world = Movie.create(title: "Spice World", box_office_earnings: 151_000_000)
marvel = Movie.create(title: "Avengers", box_office_earnings: 671_000_000)


puts "Creating actors..."
lindsay_lohan = Actor.create(name: "Lindsay Lohan")
tina_fey = Actor.create(name: "Tina Fey")
baby_spice = Actor.create(name: "Emma Bunton")
ginger_spice = Actor.create(name: "Geri Halliwell")
scary_spice = Actor.create(name: "Melanie Brown")
sporty_spice = Actor.create(name: "Melanie Chisholm")
posh_spice = Actor.create(name: "Victoria Addams")

puts "Creating roles..."
# ***********************************************************
# * TODO: create roles! Remember, a role belongs to a movie *
# * and a role belongs to an actor.                         *
# ***********************************************************
# Create Roles Here
Role.create(salary:11156657, character_name:"Donny", actor_id:tina_fey.id, movie_id:mean_girls.id)
Role.create(salary:5665657, character_name:"Jesus Quintana", actor_id:tina_fey.id, movie_id:spice_world.id)
Role.create(salary:65567890, character_name:"Karl Hangus", actor_id:baby_spice.id, movie_id:mean_girls.id)
Role.create(salary:56987654, character_name:"Joker", actor_id:sporty_spice.id, movie_id:spice_world.id)
Role.create(salary:11157776657, character_name:"Jack TreeHorn", actor_id:scary_spice.id, movie_id:spice_world.id)
Role.create(salary:654356789, character_name:"Villain", actor_id:posh_spice.id, movie_id:marvel.id)
Role.create(salary:4567897, character_name:"Thor", actor_id:tina_fey.id, movie_id:marvel.id)

puts "Seeding done!"