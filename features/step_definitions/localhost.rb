When("the app has a pet named {string}") do |pet_name|
  Pet.create(name: pet_name, species: 'Cat')
end

When("the User visits the home") do
  visit "/"
end

Then("the User sees {string}") do |text|
  expect(page).to have_text(text)
end
