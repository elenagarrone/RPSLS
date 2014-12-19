Feature: Start a game
  As a causal visitor to the page
  I want to be able to register and play RPSLS

Scenario: Visiting the page
  Given I am on the homepage
  Then I should see "Rock Paper Scissors Lizard Spock"

Scenario: Registering
  Given I am on the homepage
  When I fill in "player" with "Elena"
  And click on "Start!"
  Then I should see "Rock Paper Scissors Lizard Spock"
  And I should see "Welcome Elena. Choose a weapon!"

Scenario: Choosing a weapon
  Given I have registered
  When click on "ROCK"
  Then I should see "Elena chose ROCK."

Scenario: When it's a draw 
  Given I have registered
  When click on "ROCK"
  Then I should see "You both chose ROCK."

Scenario: Visiting the result page
  Given I am on the result page
  Then I should see "Play Again!"
