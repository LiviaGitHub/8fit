Feature: As a user,

  With.

  Background:
    Given User Profile is already created with the goal to be achieved.
    And User must be on the profile screen.

  Scenario: Change the Goal
    When User tap "Modify"
    Then "My fitness plan" screen is displayed.
         "My details" must be visible.
         "My target values" with target weight and target calories must be visible.
    When User tap "Goal"
    Then "Goal" screen is displayed. Lose weight, Get fitter and
         Gain muscle must be visible.
    When User change the goal and back to "My fitness plan" screen
    Then "Goal" information should be the same as previously selected
    When User back to Profile screen
    Then The "goal" has been changed
