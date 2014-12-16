Feature: Start a game
  As a causal visitor to the page
  I want to be able to register and play RPSLS

Scenario: Visiting the page
  Given I am on the homepage
  Then I should see "Welcome to Rock Paper Scissors Lizard Spock!"

Scenario: Registering
  Given I am on the homepage
  When I fill in "player" with "Elena"
  And click on "Start!"
  Then I should have "Welcome Elena. Choose a weapon!"
