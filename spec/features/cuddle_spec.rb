require "rails_helper"

RSpec.feature "Cuddling", :type => :feature do
  scenario "User searches for a pet to cuddle" do
    # Setup
    Pet.create(name: 'Mr. Cuddlesworth', species: 'Cat')

    # Exercise
    visit "/"

    fill_in "Search", with: "Cat"
    click_button "Cuddle Search!"

    # Verify
    expect(page).to have_text("Mr. Cuddlesworth")
  end

  scenario "User cuddles a pet" do
    # Setup
    cuddlesworth = Pet.create(name: 'Mr. Cuddlesworth', species: 'Cat')

    # Exercise
    visit "/pets/#{cuddlesworth.id}"

    click_button "Cuddle!"

    # Verify
    expect(page).to have_text("Mr. Cuddlesworth was succesfully cuddled!")
  end
end
