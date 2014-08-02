Feature: New Trip
          In order to for participants to sign up
          As a user
          I want to create them easily
          Scenario: Creating a trip
            Given I am on the homepage
            When I follow "New Trip"
            And I fill in "Name" with "Test Trip"
            And I press "Create Trip"
            Then I should see "Trip has been created."
