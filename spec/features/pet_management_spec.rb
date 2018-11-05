require "rails_helper"

RSpec.feature "Pet management", :type => :feature do
  scenario "User creates a new pet" do
    visit "/pets/new"

    fill_in "Name", with: "Mr. Cuddlesworth"
    fill_in "Species", with: "Cat"
    click_button "Create Pet"

    expect(page).to have_text("Pet was successfully created.")
  end
end
