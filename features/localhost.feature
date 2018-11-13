Feature: Cuddle a pet

  # The first example has two steps
  Scenario: User sees a pet list
    When the app has a pet named 'Mr Cuddlesworth'
    And the User visits the home
    Then the User sees 'Mr Cuddlesworth'

  # The second example has three steps
  # Scenario: Breaker joins a game
  #   Given the Maker has started a game with the word "silky"
  #   When the Breaker joins the Maker's game
  #   Then the Breaker must guess a word with 5 characters
