Pet.destroy_all

5.times do
  Pet.create(name: Faker::Creature::Cat.name, species: Faker::Creature::Animal.name)
end
