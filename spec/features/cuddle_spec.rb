# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Cuddling', type: :feature do
  scenario 'User sees a list of pets to cuddle' do
    # Given
    Pet.create(name: 'Mr. Cuddlesworth', species: 'Cat')
    visit '/'

    # When...

    # Then
    expect(page).to have_text('Mr. Cuddlesworth')
  end

  scenario 'User selects a pet to cuddle' do
    # Given
    Pet.create(name: 'Mr. Cuddlesworth', species: 'Cat')
    visit '/'

    # When
    click_link 'Mr. Cuddlesworth'

    # Then
    expect(page)
      .to have_text('Mr. Cuddlesworth')
      .and have_text('Cat')
  end

  scenario 'User cuddles a pet' do
    # Given
    cuddlesworth = Pet.create(name: 'Mr. Cuddlesworth', species: 'Cat')
    visit "/pets/#{cuddlesworth.id}"

    # When
    click_link 'Cuddle!'

    # Then
    expect(page).to have_text('Mr. Cuddlesworth was succesfully cuddled!')
  end

  pending 'User sees a prompt to add pets if none exist'
end
