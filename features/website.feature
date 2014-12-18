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

Scenario: Spock
  Given I have registered
  When click on "SPOCK"
  Then I should see "Elena chose SPOCK"

Scenario: Draw with Rock
  Given I have registered
  When click on "ROCK"
  And the computer chose "ROCK"
  Then I should see "You both chose ROCK."

Scenario: Draw with Paper
  Given I have registered
  When click on "PAPER"
  Then I should see "You both chose PAPER."

Scenario: Draw with Scissors
  Given I have registered
  When click on "SCISSORS"
  Then I should see "You both chose SCISSORS."

Scenario: Draw with Lizard
  Given I have registered
  When click on "LIZARD"
  Then I should see "You both chose LIZARD."

Scenario: Draw with Spock
  Given I have registered
  When click on "SPOCK"
  Then I should see "You both chose SPOCK."

Scenario: Visiting the result page
  Given I am on the result page
  Then I should see "Play Again!"
