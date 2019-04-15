# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Pet management', type: :feature do
  scenario 'User navigates to pet adding form' do
    # Given...
    visit '/pets/new'

    # When
    # click_link "Add a Pet"

    # Then
    expect(page)
      .to have_content('form')
      .and have_text('Create a new Pet')
  end

  scenario 'User creates a new pet' do
    # Given...
    visit '/pets/new'

    # When
    fill_in 'Name', with: 'Mr. Cuddlesworth'
    fill_in 'Species', with: 'Cat'
    click_button 'Create Pet'

    # Then
    expect(page)
      .to have_text('Pet was succesfully created.')
      .and have_text('Mr. Cuddlesworth')
  end
end
