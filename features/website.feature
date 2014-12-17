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
  Then it should appear "Rock Paper Scissors Lizard Spock"
  And I should have "Welcome Elena. Choose a weapon!"

Scenario: Rock
  Given I have registered
  When click on "ROCK"
  Then I should see "Elena chose ROCK."

Scenario: Paper
  Given I have registered
  When click on "PAPER"
  Then I should see "Elena chose PAPER"

Scenario: Scissors
  Given I have registered
  When click on "SCISSORS"
  Then I should see "Elena chose SCISSORS"

Scenario: Lizard
  Given I have registered
  When click on "LIZARD"
  Then I should see "Elena chose LIZARD"
