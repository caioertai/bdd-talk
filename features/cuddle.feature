Feature: Cuddle a pet

  # The first example has two steps
  Scenario: User sees a pet list
    When the app has a pet named 'Mr Cuddlesworth'
    And the User visits the home
    Then the User sees 'Mr Cuddlesworth'
