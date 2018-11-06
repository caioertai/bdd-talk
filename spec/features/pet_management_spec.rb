require "rails_helper"

RSpec.feature "Pet management", :type => :feature do
  scenario "User creates a new pet" do
    # Given...
    visit "/pets/new"

    # When
    fill_in "Name", with: "Mr. Cuddlesworth"
    fill_in "Species", with: "Cat"
    click_button "Create Pet"

    # Then
    expect(page).to have_text("Pet was succesfully created.")
  end
end
