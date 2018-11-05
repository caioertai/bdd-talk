Pet.destroy_all
Pet.create(name: Faker::Cat.name, species: Faker::Creature::Animal.name)
